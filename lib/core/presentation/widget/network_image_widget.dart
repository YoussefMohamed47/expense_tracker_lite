import 'package:expense_tracker_lite/core/presentation/widget/image_loading_progress_widget.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NetworkImageWidget extends StatelessWidget {
  final String? imageUrl;
  BoxFit? fit;
  final double? width;
  final double? height;

  NetworkImageWidget({
    super.key,
    this.imageUrl,
    this.fit,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl ?? "",
      fit: BoxFit.cover,
      width: width ?? 30.w,
      height: height ?? 30.h,
      loadingBuilder: (context, child, loadingProgress) {
        return LayoutBuilder(builder: (context, constraints) {
          debugPrint("Constraints: $constraints");

          return SizedBox(
            width: width ?? 30.w,
            height: height ?? 30.h,
            child: ImageLoadingProgressWidget(
              progress: loadingProgress?.expectedTotalBytes != null
                  ? (loadingProgress?.cumulativeBytesLoaded ?? 0) /
                      (loadingProgress?.expectedTotalBytes ?? 1)
                  : 0.0,
            ),
          );
        });
      },
      errorBuilder: (context, error, stackTrace) => Center(
        child: Icon(
          Icons.person,
          size: 16.w,
          color: AppColors.gray500,
        ),
      ),
    );
  }
}
