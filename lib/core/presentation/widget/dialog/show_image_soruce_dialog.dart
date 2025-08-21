import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<XFile?> showImageSourcePicker(BuildContext screenContext) async {
  final picker = ImagePicker();

  return await showModalBottomSheet<XFile>(
    context: screenContext,
    builder: (BuildContext context) {
      return SafeArea(
        child: Wrap(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: Text('camera'.tr()),
              onTap: () async {
                final picked =
                    await picker.pickImage(source: ImageSource.camera);
                Navigator.pop(context, picked); // رجع الصورة
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: Text('gallery'.tr()),
              onTap: () async {
                final picked =
                    await picker.pickImage(source: ImageSource.gallery);
                Navigator.pop(context, picked); // رجع الصورة
              },
            ),
          ],
        ),
      );
    },
  );
}
