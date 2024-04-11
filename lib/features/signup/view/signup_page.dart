import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/core/local_storage/app_storage_pod.dart';
import 'package:innovatrix_assesment/core/router/router.gr.dart';
import 'package:innovatrix_assesment/features/signup/const/signup_form_keys.dart';
import 'package:innovatrix_assesment/features/signup/controller/signup_pod.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/signup_body.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/signup_button.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignUpView();
  }
}

class SignUpView extends ConsumerStatefulWidget {
  const SignUpView({super.key});

  @override
  ConsumerState<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends ConsumerState<SignUpView> {
  ValueNotifier<bool> termsCheck = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final signUpFormKey = GlobalKey<FormBuilderState>();
    final isDark = MediaQuery.platformBrightnessOf(context) == Brightness.dark;

    void onSignup() {
      HapticFeedback.lightImpact();
      Feedback.forTap(context);

      if (signUpFormKey.currentState!.saveAndValidate()) {
        ref.read(signupProvider.notifier).signup(
              phoneNumber:
                  signUpFormKey.currentState!.fields[SignupFormKeys.phoneNumber]!.value.toString(),
              email: signUpFormKey.currentState!.fields[SignupFormKeys.email]!.value.toString(),
              password:
                  signUpFormKey.currentState!.fields[SignupFormKeys.password]!.value.toString(),
              onUserSignedup: (signupModelResponse) {
                if (signupModelResponse?.id != null) {
                  context.maybePop();
                  ref.invalidate(isarProvider);
                } else {
                  context.router.replaceAll([const LoginBaseRoute()]);
                }
              },
            );
      }
    }

    return Scaffold(
      body: SafeArea(
        child: FormBuilder(
          key: signUpFormKey,
          child: SignupBody(termsCheck: termsCheck, isDark: isDark),
        ),
      ),
      // persistentFooterAlignment: AlignmentDirectional.center,
      bottomNavigationBar: SignUpButton(
        onSignup: onSignup,
      ).pSymmetric(h: 20, v: 40),
    );
  }
}
