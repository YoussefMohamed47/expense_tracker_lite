import 'dart:developer';

import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "").trim();

    // Check with RegExp if it's a valid hex code
    final hexRegex = RegExp(r'^[0-9A-F]{6,8}$');
    if (!hexRegex.hasMatch(hexColor)) {
      // If not valid hex, return fallback color
      log("Invalid hex color: $hexColor. Using fallback color.");
      return 0xFF9E9E9E; // Fallback color e.g., grey
    }

    if (hexColor.length == 6) {
      hexColor = "FF$hexColor"; // Add full opacity
    }

    try {
      final hexNum = int.parse(hexColor, radix: 16);
      if (hexNum == 0) {
        return 0xFF000000; // Black if it's 0
      }
      return hexNum;
    } catch (e) {
      log("Error parsing hex color: $hexColor. Using fallback. Error: $e");
      return 0xFF9E9E9E; // Fallback color
    }
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class ColorToHex extends Color {
  static int _convertColorToHex(Color color) {
    return (color.a.toInt() << 24) |
        (color.r.toInt() << 16) |
        (color.g.toInt() << 8) |
        color.b.toInt();
  }

  ColorToHex(final Color color) : super(_convertColorToHex(color));
}
