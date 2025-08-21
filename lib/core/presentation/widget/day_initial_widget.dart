import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class DateAvatar extends StatelessWidget {
  final String dateString;

  DateAvatar({required this.dateString});

  String getDayInitials() {
    DateTime dateTime = DateTime.parse(dateString).toLocal();
    return DateFormat('E').format(dateTime).toUpperCase(); // "WED", "THU", etc.
  }

  List<Color> getRandomGradient() {
    final List<List<Color>> gradients = [
      [Colors.blue, Colors.purple],
      [Colors.red, Colors.orange],
      [Colors.green, Colors.teal],
      [Colors.pink, Colors.purpleAccent],
      [Colors.deepPurple, Colors.blueAccent],
      [Colors.amber, Colors.deepOrange],
      [Colors.indigo, Colors.cyan],
    ];
    return gradients[Random().nextInt(gradients.length)];
  }

  @override
  Widget build(BuildContext context) {
    List<Color> gradientColors = getRandomGradient();

    return Container(
      width: 40.w,
      height: 40.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        getDayInitials(),
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
