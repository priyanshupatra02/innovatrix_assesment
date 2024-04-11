import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:innovatrix_assesment/core/router/router.gr.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/terms_and_conditions_text.dart';
import 'package:innovatrix_assesment/shared/animated_widgets/fade_in_slide.dart';

class AccountExistingWidget extends StatelessWidget {
  final bool isSignin;
  const AccountExistingWidget({
    super.key,
    this.isSignin = false,
  });

  @override
  Widget build(BuildContext context) {
    return isSignin
        ? FadeInSlide(
            duration: .8,
            child: TermsAndConditionsText(
              text1: "Don't have an account? ",
              text2: "Sign Up",
              onTap: () {
                context.navigateTo(const SignupRoute());
              },
            ),
          )
        : TermsAndConditionsText(
            text1: "Already have an account? ",
            text2: "Sign In",
            onTap: () {
              context.maybePop();
            },
          );
  }
}
