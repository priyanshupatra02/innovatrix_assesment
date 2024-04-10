import 'package:flutter/material.dart';
import 'package:innovatrix_assesment/shared/animated_widgets/fade_in_slide.dart';
import 'package:velocity_x/velocity_x.dart';

class PasswordText extends StatelessWidget {
  const PasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInSlide(
      duration: .6,
      child: Text(
        "Password",
        style: context.titleMedium!.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
