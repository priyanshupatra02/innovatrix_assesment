import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/core/local_storage/app_storage_pod.dart';
import 'package:innovatrix_assesment/data/entities/local_user_entity/local_user.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/account_existing_signin.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/email_form.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/email_text.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/name_text.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/password_form.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/password_text.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/phone_number_form.dart';
import 'package:innovatrix_assesment/shared/animated_widgets/fade_in_slide.dart';
import 'package:isar/isar.dart';
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
        Consumer(
          builder: (context, ref, child) {
            final isarProviderAsync = ref.watch(isarProvider);
            final localUserFromDB = isarProviderAsync.localUsers.where().findFirst();
            return FutureBuilder(
              future: localUserFromDB,
              builder: (context, snapshot) {
                return snapshot.hasData ? const AccountExistingWidget() : const SizedBox.shrink();
              },
            );
          },
        ),
      ],
    );
  }
}
