import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

Color brightnessColor({
  Color lightColor = AppColors.secondaryBackgroundLight,
  Color darkColor = AppColors.secondaryBackgroundDark,
  required BuildContext context,
}) {
  var isDarkMode = context.isDarkMode;
  return isDarkMode ? darkColor : lightColor;
}

extension ModeHelper on BuildContext {
  bool get isDarkMode =>
      MediaQuery.of(this).platformBrightness == Brightness.dark;
}
