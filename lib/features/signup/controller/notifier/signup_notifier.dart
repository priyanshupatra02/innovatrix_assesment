import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/data/model/auth_model.dart';
import 'package:innovatrix_assesment/data/repository/signup/signup_repository_pod.dart';
import 'package:innovatrix_assesment/data/service/login_db/login_db_service_pod.dart';
import 'package:innovatrix_assesment/features/signup/state/signup_states.dart';


class SignupAsyncNotifier extends AutoDisposeAsyncNotifier<SignupState> {
  @override
  FutureOr<SignupState> build() {
    return const InitialSignupState();
  }

  Future<void> signup({
    required String name,
    required String email,
    required String password,
    required void Function(AuthModel signupModelResponse) onUserSignedup,
  }) async {
    state = const AsyncData(SigningInState());
    state = await AsyncValue.guard(
      () async {
        final result = await ref.watch(signupRepoProvider).signup(
              name: name,
              email: email,
              password: password,
            );
        return result.when(
          (loginModel) async {
            // if (loginModel.user.jwt.isNotEmpty) {
            //   await ref.watch(loginDbProvider).saveLoginModel(loginModel: loginModel);
            //   onUserSignedup(loginModel);
              return const SignedInState();
            // } else {
              return const NotSignedInState();
            // }
          },
          (error) => SignupErrorState(
            error.errorMessage,
          ),
        );
      },
    );
  }
}
