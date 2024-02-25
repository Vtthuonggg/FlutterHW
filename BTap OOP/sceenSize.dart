import 'dart:ffi';

import 'package:flutter/material.dart';

class ScreenSize {
  final Size _designScreenSize = Size(375, 812);
  Size _deviceScreenSize;

  void init(Size deviceScreenSize) {
    this._deviceScreenSize = deviceScreenSize;
  }

  double scaleWidth(num designNumber) {
    try {
      final scaleFactor = _deviceScreenSize.width / _designScreenSize.width;
      return designNumber * scaleFactor;
    } catch (e) {
      return designNumber;
    }
  }
}

void main() {
  final screenSize = ScreenSize();
  screenSize.init(Size(430, 932));

  final scaledWidth =
      screenSize.scaleWidth(100); // scaledWidth = 114.66666666666667

  print(scaledWidth);
}
