import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/data/entities/local_user_entity/local_user.dart';
import 'package:innovatrix_assesment/data/repository/signup/signup_repository_pod.dart';
import 'package:innovatrix_assesment/features/signup/state/signup_states.dart';

class SignupAsyncNotifier extends AutoDisposeAsyncNotifier<SignupState> {
  @override
  FutureOr<SignupState> build() {
    return const InitialSignupState();
  }

  Future<void> signup({
    required String email,
    required String password,
    required String phoneNumber,
    required void Function(LocalUser? localUserResponse) onUserSignedup,
  }) async {
    state = const AsyncData(SigningInState());
    state = await AsyncValue.guard(
      () async {
        final result = await ref.watch(signupRepoProvider).signup(
              phoneNumber: phoneNumber,
              email: email,
              password: password,
              isLoggedIn: false,
            );

        return result.when(
          (signupResponse) async {
            if (signupResponse?.id != null) {
              onUserSignedup(signupResponse);
              return const SignedInState();
            } else {
              return const NotSignedInState();
            }
          },
          (error) => SignupErrorState(
            error.errorMessage,
          ),
        );
      },
    );
  }
}
