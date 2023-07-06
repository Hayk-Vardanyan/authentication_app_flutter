import 'package:flutter/material.dart';
import 'package:untitled3/utils/color_utils.dart';

import '../themes/app_colors.dart';

class InputTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String label;
  final Function(String onChanged) onChanged;
  final String? error;

  const InputTextField({
    Key? key,
    required this.controller,
    required this.focusNode,
    required this.label,
    required this.error,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          onChanged: onChanged,
          focusNode: focusNode,
          decoration: InputDecoration(
            disabledBorder: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 5,
            ),
            hintText: label,
            hintStyle: TextStyle(
              color: brightnessColor(
                lightColor: AppColors.textLightColor,
                darkColor: AppColors.textDarkColor,
                context: context,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(24),
                bottom: Radius.circular(24),
              ),
              borderSide: BorderSide(
                color: error != null
                    ? AppColors.textFieldBorder
                    : AppColors.textFieldBorder,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(24),
                bottom: Radius.circular(24),
              ),
              borderSide: BorderSide(
                color: error != null
                    ? AppColors.textFieldBorder
                    : AppColors.textFieldBorder,
              ),
            ),
            // filled: false,
          ),
          controller: controller,
          cursorColor: brightnessColor(
            lightColor: Colors.black87,
            darkColor: Colors.white,
            context: context,
          ),
          textCapitalization: TextCapitalization.sentences,
        ),
        const SizedBox(height: 8),
        if (error != null)
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              error!,
              style: const TextStyle(
                color: Colors.red,
              ),
            ),
          ),
      ],
    );
  }
}
