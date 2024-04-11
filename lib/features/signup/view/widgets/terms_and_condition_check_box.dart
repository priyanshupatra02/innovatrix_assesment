import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/terms_and_conditions_text.dart';
import 'package:innovatrix_assesment/shared/animated_widgets/fade_in_slide.dart';

class TermsAndConditionCheckBox extends StatelessWidget {
  const TermsAndConditionCheckBox({
    super.key,
    required this.termsCheck,
    required this.isDark,
  });

  final ValueNotifier<bool> termsCheck;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return FadeInSlide(
      duration: .7,
      child: Row(
        children: [
          ValueListenableBuilder(
            valueListenable: termsCheck,
            builder: (context, value, child) {
              return CupertinoCheckbox(
                inactiveColor: isDark ? Colors.white : Colors.black87,
                value: value,
                onChanged: (_) {
                  termsCheck.value = !termsCheck.value;
                },
              );
            },
          ),
          TermsAndConditionsText(
            text1: "I agree to Innovatrix Assesment ",
            text2: "Terms and Conditions.",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
