import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/features/signup/controller/signup_pod.dart';
import 'package:innovatrix_assesment/features/signup/state/signup_states.dart';
import 'package:innovatrix_assesment/shared/animated_widgets/fade_in_slide.dart';
import 'package:innovatrix_assesment/shared/riverpod_ext/asynvalue_easy_when.dart';

import 'package:innovatrix_assesment/shared/widget/primary_action_button.dart';

class SignUpButton extends ConsumerWidget {
  final VoidCallback onSignup;
  const SignUpButton({
    super.key,
    required this.onSignup,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupProviderAsync = ref.watch(signupProvider);
    return signupProviderAsync.easyWhen(
      data: (signupStates) {
        return switch (signupStates) {
          InitialSignupState() => FadeInSlide(
              duration: 1,
              direction: FadeSlideDirection.btt,
              child: PrimaryActionButton(
                buttonLabel: '🚀 Sign Up 🚀',
                onPressed: onSignup,
              ),
            ),
          SigningInState() => const FadeInSlide(
              duration: 1,
              direction: FadeSlideDirection.btt,
              child: PrimaryActionButton(
                isLoading: true,
                buttonLabel: '🚀 Signing Up 🚀',
                onPressed: null,
              ),
            ),
          SignedInState() => const FadeInSlide(
              duration: 1,
              direction: FadeSlideDirection.btt,
              child: PrimaryActionButton(
                buttonLabel: '✅ Signed Up ✅',
                onPressed: null,
              ),
            ),
          NotSignedInState() => FadeInSlide(
              duration: 1,
              direction: FadeSlideDirection.btt,
              child: PrimaryActionButton(
                buttonLabel: '🔄 Retry 🔄',
                onPressed: onSignup,
              ),
            ),
          SignupErrorState() => FadeInSlide(
              duration: 1,
              direction: FadeSlideDirection.btt,
              child: PrimaryActionButton(
                buttonLabel: '❌ Unable To Sign Up ❌',
                onPressed: onSignup,
              ),
            ),
        };
      },
    );
  }
}
