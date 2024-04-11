import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/data/entities/local_user_entity/local_user.dart';
import 'package:innovatrix_assesment/data/repository/login/login_repository_pod.dart';
import 'package:innovatrix_assesment/features/login/state/login_states.dart';

class LoginAsyncNotifier extends AutoDisposeAsyncNotifier<LoginState> {
  @override
  FutureOr<LoginState> build() {
    return const InitialLoginState();
  }

  Future<void> signin({
    required String email,
    required String password,
    required bool isLoggedIn,
    required void Function(LocalUser? loginModelResponse) onUserLoggedIn,
  }) async {
    state = const AsyncData(LoggingInState());
    state = await AsyncValue.guard(
      () async {
        final result = await ref.watch(loginRepoProvider).signin(
              email: email,
              password: password,
              isLoggedIn: isLoggedIn,
            );

        return result.when(
          (loginModel) async {

            if (loginModel?.id != null) {
              onUserLoggedIn(loginModel);
              return const LoggedInState();
            } else {
              return const NotLoggedInState();
            }
          },
          (error) => LoginErrorState(
            error.errorMessage,
          ),
        );
      },
    );
  }
}
