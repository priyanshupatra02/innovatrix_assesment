import 'package:flutter/material.dart';
import 'package:innovatrix_assesment/shared/animated_widgets/fade_in_slide.dart';
import 'package:velocity_x/velocity_x.dart';

class PhoneNumberText extends StatelessWidget {
  const PhoneNumberText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInSlide(
      duration: .5,
      child: Text(
        "Phone Number",
        style: context.titleMedium!.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
