import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/features/login/const/login_form_keys.dart';
import 'package:innovatrix_assesment/features/login/controller/login_pod.dart';
import 'package:innovatrix_assesment/features/login/view/widgets/login_button.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/account_existing_signin.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/email_form.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/email_text.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/password_form.dart';
import 'package:innovatrix_assesment/features/signup/view/widgets/password_text.dart';
import 'package:innovatrix_assesment/shared/animated_widgets/fade_in_slide.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(
  deferredLoading: true,
)
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginFormKey = GlobalKey<FormBuilderState>();
    void onLogin() {
      HapticFeedback.lightImpact();
      Feedback.forTap(context);
      if (loginFormKey.currentState!.saveAndValidate()) {
        ref.read(loginProvider.notifier).signin(
              email: loginFormKey.currentState!.fields[LoginFormKeys.email]!.value.toString(),
              password: loginFormKey.currentState!.fields[LoginFormKeys.password]!.value.toString(),
              onUserLoggedIn: (loginModelResponse) {
                // if (loginModelResponse.user.jwt.isNotEmpty) {
                //   context.router.replaceAll([const HomeRoute()]);
                // } else {
                //   context.router.replaceAll([const LoginBaseRoute()]);
                // }
              },
            );
      }
    }

    return Scaffold(
      bottomNavigationBar: LoginButton(
        onLogin: onLogin,
      ).pSymmetric(h: 20, v: 40),
      body: SafeArea(
        child: FormBuilder(
          key: loginFormKey,
          child: ListView(
            children: [
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
              20.heightBox,
              const AccountExistingWidget(
                isSignin: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
