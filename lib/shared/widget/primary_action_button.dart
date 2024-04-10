import 'package:flutter/material.dart';
import 'package:innovatrix_assesment/const/app_colors.dart';
import 'package:innovatrix_assesment/shared/animated_widgets/jumping_dots.dart';

import 'package:velocity_x/velocity_x.dart';

class PrimaryActionButton extends StatelessWidget {
  final String buttonLabel;
  final void Function()? onPressed;
  final bool isLoading;
  const PrimaryActionButton({
    super.key,
    required this.buttonLabel,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        fixedSize: const Size(double.infinity, 60),
        backgroundColor: AppColors.kSecondaryBgColor,
        shape: const StadiumBorder(side: BorderSide(color: AppColors.kPrimaryBgColor, width: 2)),
      ),
      child: isLoading
          ? JumpingDots(
              color: AppColors.kPrimaryBgColor,
              radius: 10,
              animationDuration: const Duration(milliseconds: 250),
            )
          : buttonLabel.text.size(18).bold.color(AppColors.kPrimaryBgColor).make(),
    );
  }
}
