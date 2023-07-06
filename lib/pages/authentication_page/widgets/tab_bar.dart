import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/themes/app_colors.dart';
import 'package:untitled3/utils/color_utils.dart';

class AuthTabBar extends StatelessWidget {
  final Function(int) onTap;

  final AsyncCallback? onSignUp;
  final AsyncCallback? onLogIn;

  final int currentIndex;

  const AuthTabBar({
    Key? key,
    required this.onTap,
    required this.onSignUp,
    required this.onLogIn,
    this.currentIndex = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
      ),
      decoration: BoxDecoration(
        color: brightnessColor(
          lightColor: AppColors.tabBarUnActiveLight,
          context: context,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () async {
                if (currentIndex != 0) {
                  onTap(0);
                } else {
                  if (onLogIn != null) {
                    await onLogIn!();
                  }
                }
              },
              child: AnimatedContainer(
                // height: 48,
                duration: const Duration(milliseconds: 300),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 24),
                decoration: BoxDecoration(
                  color: brightnessColor(
                    lightColor: currentIndex == 0
                        ? AppColors.tabBarActiveLight
                        : AppColors.tabBarUnActiveLight,
                    darkColor: currentIndex == 0
                        ? AppColors.tabBarActiveLight
                        : AppColors.secondaryBackgroundDark,
                    context: context,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: brightnessColor(
                      lightColor:
                          currentIndex == 0 ? Colors.white : Colors.black87,
                      darkColor: Colors.white,
                      context: context,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () async {
                if (currentIndex != 1) {
                  onTap(1);
                } else {
                  if (onSignUp != null) {
                    await onSignUp!();
                  }
                }
              },
              child: AnimatedContainer(
                // height: 48,
                duration: const Duration(milliseconds: 300),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 24),
                decoration: BoxDecoration(
                  color: brightnessColor(
                    lightColor: currentIndex == 1
                        ? AppColors.tabBarActiveLight
                        : AppColors.tabBarUnActiveLight,
                    darkColor: currentIndex == 1
                        ? AppColors.tabBarActiveLight
                        : AppColors.secondaryBackgroundDark,
                    context: context,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Sign-Up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: brightnessColor(
                      lightColor:
                          currentIndex == 1 ? Colors.white : Colors.black87,
                      darkColor: Colors.white,
                      context: context,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
