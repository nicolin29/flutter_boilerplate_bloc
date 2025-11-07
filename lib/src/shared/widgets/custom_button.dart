import 'package:flutter/material.dart';
import '../../core/utils/size_utils.dart';
import '../../core/theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.w),
          ),
        ),
        child: Text(title),
      ),
    );
  }
}
