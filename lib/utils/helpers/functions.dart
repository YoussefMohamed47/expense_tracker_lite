import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:expense_tracker_lite/core/data/models/expense_model.dart';
import 'package:expense_tracker_lite/core/error/toast_helper.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:permission_handler/permission_handler.dart';

bool isEmailValid(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

final ImagePicker _picker = ImagePicker();

Future<File?> pickImage(ImageSource source) async {
  final pickedFile = await _picker.pickImage(source: source);

  if (pickedFile != null) {
    return File(pickedFile.path);
  } else {
    return null;
  }
}

Future<bool> checkPermission() async {
  if (Platform.isIOS) {
    return true;
  }

  if (Platform.isAndroid) {
    await Permission.notification.request();
    final info = await DeviceInfoPlugin().androidInfo;
    if (info.version.sdkInt > 28) {
      return true;
    }

    final status = await Permission.storage.status;
    if (status == PermissionStatus.granted) {
      return true;
    }

    final result = await Permission.storage.request();
    return result == PermissionStatus.granted;
  }

  throw StateError('unknown platform');
}

Future<void> downloadAttachment({
  required String url,
  required String fileName,
}) async {
  bool isGranted = await checkPermission();
  if (isGranted) {
    await FlutterDownloader.enqueue(
      url: url,
      savedDir: '/storage/emulated/0/Download',
      fileName: fileName,
      showNotification: true,
      saveInPublicStorage: true,
      allowCellular: true,
      openFileFromNotification: true,
    );
  }
}

/// Helper function to pick files

Future<File?> pickFile() async {
  try {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: [
        'jpg',
        'jpeg',
        'png',
        'pdf',
        'doc',
        'docx',
        'xls',
        'xlsx',
        'ppt',
        'pptx',
        'txt',
        "sketch",
        "psd"
      ],
    );

    if (result != null && result.files.isNotEmpty) {
      return File(result.files.single.path!); // ✅ ملف واحد فقط
    }
    return null; // ✅ في حالة مفيش اختيار
  } catch (e) {
    print("Error picking file: $e");
    return null;
  }
}

int generateUniqueId() {
  final random = Random();
  return DateTime.now().microsecondsSinceEpoch + random.nextInt(9999);
}

Color parseColor(String colorString) {
  // بتستخرج الجزء اللي بعد 0x وبتحوّله int
  final valueString = colorString.split('(0x')[1].split(')')[0];
  return Color(int.parse(valueString, radix: 16));
}

String formatNumber(String value) {
  final number = double.tryParse(value) ?? 0.0;
  if (number >= 1000000) {
    return "${(number / 1000000).toStringAsFixed(1)}M";
  } else if (number >= 1000) {
    return "${(number / 1000).toStringAsFixed(1)}K";
  } else {
    return number.toStringAsFixed(2);
  }
}

double calculateConvertedAmount(String amount, double rate) {
  if (!isExpenseValid(amount)) {
    return 0;
  } else {
    return double.parse(amount) * rate;
  }
}

bool isExpenseValid(String amount) {
  final value = double.tryParse(amount);

  if (value == null || value <= 0) return false;

  return true;
}

Future<String> exportExpensesToPDF(List<ExpenseModel> expenses) async {
  try {
    final status = await Permission.storage.request();
    if (!status.isGranted) {
      throw Exception('Storage permission not granted');
    }

    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (context) {
          return pw.Table.fromTextArray(
            headers: [
              "Category",
              "Date",
              "Amount",
              "Currency",
              "Converted Amount"
            ],
            data: expenses
                .map((e) => [
                      e.category,
                      DateFormat('MMM dd, yyyy').format(e.date),
                      e.amount?.toStringAsFixed(2) ?? '0.00',
                      e.currency,
                      e.convertedAmount?.toStringAsFixed(2) ?? '0.00',
                    ])
                .toList(),
          );
        },
      ),
    );

    if (Platform.isAndroid) {
      try {
        final downloadsDir = await getExternalStorageDirectory();
        if (downloadsDir == null) {
          throw Exception('Could not access downloads directory');
        }

        final timestamp = DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());
        final fileName = 'expense_report_$timestamp.pdf';
        final filePath = '${downloadsDir.path}/$fileName';

        final file = File(filePath);
        await file.writeAsBytes(await pdf.save());

        await MethodChannel('flutter_channel')
            .invokeMethod('scanFile', {'path': filePath});

        ToastHelper.showToast(
          message: 'PDF saved to Downloads folder',
          type: ToastType.success,
        );

        return filePath;
      } catch (e) {
        print('Error saving to public storage: $e');
      }
    }

    final appDocDir = await getApplicationDocumentsDirectory();
    final dir = Directory('${appDocDir.path}/ExpenseReports');
    if (!await dir.exists()) {
      await dir.create(recursive: true);
    }

    final timestamp = DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());
    final fileName = 'expense_report_$timestamp.pdf';
    final filePath = '${dir.path}/$fileName';

    final file = File(filePath);
    await file.writeAsBytes(await pdf.save());

    ToastHelper.showToast(
      message: 'PDF saved to app storage',
      type: ToastType.success,
    );

    return filePath;
  } catch (e) {
    print('Error exporting PDF: $e');
    rethrow;
  }
}
