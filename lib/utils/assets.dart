import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Assets {
  Assets._();

  static const String splashScreen = 'assets/app_photos/data_processing.png';
  static const String backgroundImage = 'assets/app_photos/background.svg';
  static const String logo = 'assets/icons/logo.svg';
}

extension AssetsHelper on String {
  SvgPicture svg({
    Color? color,
    double? height,
    double? width,
    BoxFit fit = BoxFit.contain,
  }) {
    return SvgPicture.asset(
      this,
      color: color,
      height: height,
      width: width,
      fit: fit,
    );
  }

  Image get png => Image.asset(this);
}
