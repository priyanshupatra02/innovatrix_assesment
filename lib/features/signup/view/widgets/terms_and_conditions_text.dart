import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TermsAndConditionsText extends StatelessWidget {
  final String text1;
  final String text2;
  final VoidCallback onTap;
  const TermsAndConditionsText({
    super.key,
    required this.text1,
    required this.text2,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: context.titleSmall,
        text: text1,
        children: [
          TextSpan(
            text: text2,
            style: context.titleSmall?.copyWith(color: Theme.of(context).colorScheme.primary),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
