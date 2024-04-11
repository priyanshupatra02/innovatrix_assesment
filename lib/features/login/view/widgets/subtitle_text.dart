import 'package:flutter/material.dart';
import 'package:innovatrix_assesment/shared/animated_widgets/fade_in_slide.dart';
import 'package:velocity_x/velocity_x.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInSlide(
      duration: .4,
      child: "Your Idea, Our Work 🧠".text.subtitle1(context).make(),
    );
  }
}
