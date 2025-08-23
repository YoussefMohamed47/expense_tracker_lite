import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'hex_color.dart';

bool isEmailValid(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

String extractDateFromDateTime(String dateTime) {
  // Format the date as "dd/MM/yyyy"
  if (dateTime.isEmpty || dateTime == null) return "";
  try {
    final date = DateTime.parse(dateTime);
    return "${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}";
  } catch (e) {
    // If parsing fails, return an empty string or handle the error as needed
    return "";
  }
}

bool isOverDueDate(String dateTime) {
  // Check if the date is in the past
  if (dateTime.isEmpty || dateTime == null) return false;
  try {
    final date = DateTime.parse(dateTime);
    final now = DateTime.now();
    return date.isBefore(now);
  } catch (e) {
    // If parsing fails, return false or handle the error as needed
    return false;
  }
}

Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    Fluttertoast.showToast(
        msg: 'Location services are disabled. Please enable them.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      Fluttertoast.showToast(
          msg: 'Location permissions are denied. Please enable them.');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}

String calculateTimeDifference(DateTime start, DateTime end) {
  final duration = end.difference(start);

  // Get absolute values to handle negative differences
  final hours = duration.inHours.abs().toString().padLeft(2, '0');
  final minutes = (duration.inMinutes.abs() % 60).toString().padLeft(2, '0');
  final seconds = (duration.inSeconds.abs() % 60).toString().padLeft(2, '0');

  return "$hours:$minutes:$seconds";
}

String getFormattedTimeInArabic(String time) {
  const arabicDigits = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

  // Convert time to Arabic digits
  return time.split('').map((char) {
    if (RegExp(r'\d').hasMatch(char)) {
      return arabicDigits[int.parse(char)];
    }
    return char; // Keep non-numeric characters (e.g., ':') unchanged
  }).join();
}

Color safeHexColor(String? hexCode, {String fallback = "FFFFFF"}) {
  try {
    if (hexCode == null || hexCode.isEmpty) return HexColor(fallback);
    return HexColor(hexCode);
  } catch (e) {
    return HexColor(fallback);
  }
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
