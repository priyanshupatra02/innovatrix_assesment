import 'package:flutter/material.dart';
import 'package:innovatrix_assesment/shared/animated_widgets/fade_in_slide.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInSlide(
      duration: .3,
      child: "Innovatrix 🚀".text.headline1(context).bold.make(),
    );
  }
}
