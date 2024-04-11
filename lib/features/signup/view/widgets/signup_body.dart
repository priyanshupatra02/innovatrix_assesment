import 'package:flutter/material.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/account_existing_signin.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/email_form.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/email_text.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/phone_number_form.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/name_text.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/password_form.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/password_text.dart';
import 'package:innovatrix_assesment/shared/animated_widgets/fade_in_slide.dart';
import 'package:velocity_x/velocity_x.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({
    super.key,
    required this.termsCheck,
    required this.isDark,
  });

  final ValueNotifier<bool> termsCheck;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const PhoneNumberText(),
        10.heightBox,
        const FadeInSlide(
          duration: .5,
          child: PhoneNumberForm(),
        ),
        20.heightBox,
        const EmailText(),
        10.heightBox,
        const FadeInSlide(
          duration: .5,
          child: EmailForm(),
        ),
        20.heightBox,
        const PasswordText(),
        10.heightBox,
        const FadeInSlide(
          duration: .6,
          child: PasswordForm(),
        ),
        // 20.heightBox,
        // TermsAndConditionCheckBox(termsCheck: termsCheck, isDark: isDark),
        20.heightBox,
        const AccountExistingWidget(),
        //TODO: Enable Social Logins
        // const SizedBox(height: 30),
        // FadeInSlide(
        //   duration: .9,
        //   child: Row(
        //     children: [
        //       const Expanded(
        //           child: Divider(
        //         thickness: .3,
        //       )),
        //       Text(
        //         "   or   ",
        //         style: context.titleMedium,
        //       ),
        //       const Expanded(
        //           child: Divider(
        //         thickness: .3,
        //       )),
        //     ],
        //   ),
        // ),
        // const SizedBox(height: 20),
        // FadeInSlide(
        //   duration: 1.0,
        //   child: LoginButton(
        //     icon: Brand(Brands.google, size: 25),
        //     text: "Continue with Google",
        //     onPressed: () {},
        //   ),
        // ),
        // SizedBox(height: height * 0.02),
        // FadeInSlide(
        //   duration: 1.1,
        //   child: LoginButton(
        //     icon: Icon(
        //       Icons.apple,
        //       color: isDark ? Colors.white : Colors.black,
        //     ),
        //     text: "Continue with Apple",
        //     onPressed: () {},
        //   ),
        // ),
        // SizedBox(height: height * 0.02),
        // FadeInSlide(
        //   duration: 1.2,
        //   child: LoginButton(
        //     icon: Brand(Brands.facebook, size: 25),
        //     text: "Continue with Facebook",
        //     onPressed: () {},
        //   ),
        // ),
        // SizedBox(height: height * 0.02),
        // FadeInSlide(
        //   duration: 1.3,
        //   child: LoginButton(
        //     icon: Brand(Brands.twitter, size: 25),
        //     text: "Continue with Twitter",
        //     onPressed: () {},
        //   ),
        // ),
      ],
    );
  }
}
