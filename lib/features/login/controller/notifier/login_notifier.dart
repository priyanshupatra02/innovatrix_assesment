// import 'dart:async';

// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:innovatrix_assesment/core/local_storage/app_storage_pod.dart';
// import 'package:innovatrix_assesment/data/model/auth_model.dart';
// import 'package:innovatrix_assesment/data/repository/login/login_repository_pod.dart';
// import 'package:innovatrix_assesment/data/service/login_db/login_db_service_pod.dart';
// import 'package:innovatrix_assesment/features/login/state/login_states.dart';

// class LoginAsyncNotifier extends AutoDisposeAsyncNotifier<LoginState> {
//   @override
//   FutureOr<LoginState> build() {
//     return const InitialLoginState();
//   }

//   Future<void> signin({
//     required String email,
//     required String password,
//     required void Function(AuthModel loginModelResponse) onUserLoggedIn,
//   }) async {
//     state = const AsyncData(LoggingInState());
//     state = await AsyncValue.guard(
//       () async {
//         final result = await ref.watch(isarProvider).signin(
//               email: email,
//               password: password,
//             );
//         return result.when(
//           (loginModel) async {
//             // if (loginModel.user.jwt.isNotEmpty) {
//             //   await ref.watch(loginDbProvider).saveLoginModel(loginModel: loginModel);
//             //   onUserLoggedIn(loginModel);
//               return const LoggedInState();
//             // } else {
//               // return const NotLoggedInState();
//             // }
//           },
//           (error) => LoginErrorState(
//             error.errorMessage,
//           ),
//         );
//       },
//     );
//   }
// }
