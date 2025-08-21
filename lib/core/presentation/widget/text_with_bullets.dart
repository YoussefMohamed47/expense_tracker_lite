import 'package:expense_tracker_lite/utils/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnorderedList extends StatelessWidget {
  final List<Widget> items;

  const UnorderedList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: items.map((item) {
          return Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Icon(Icons.circle, size: 7, color: Colors.black),
                  ),
                  horizontalSpace(8),
                  Expanded(child: item),
                ],
              ),
              verticalSpace(8),
            ],
          );
        }).toList(),
      ),
    );
  }
}
