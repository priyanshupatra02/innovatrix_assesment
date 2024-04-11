// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:innovatrix_assesment/features/login/controller/login_pod.dart';
// import 'package:innovatrix_assesment/features/login/state/login_states.dart';
// import 'package:innovatrix_assesment/shared/animated_widgets/fade_in_slide.dart';
// import 'package:innovatrix_assesment/shared/riverpod_ext/asynvalue_easy_when.dart';
// import 'package:innovatrix_assesment/shared/widget/primary_action_button.dart';

// class LoginButton extends ConsumerWidget {
//   final VoidCallback onLogin;
//   const LoginButton({
//     super.key,
//     required this.onLogin,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final loginProviderAsync = ref.watch(loginProvider);
//     return loginProviderAsync.easyWhen(
//       data: (loginStates) {
//         return switch (loginStates) {
//           InitialLoginState() => FadeInSlide(
//               duration: 1,
//               direction: FadeSlideDirection.btt,
//               child: PrimaryActionButton(
//                 buttonLabel: '🚀 Sign In 🚀',
//                 onPressed: onLogin,
//               ),
//             ),
//           LoggingInState() => FadeInSlide(
//               duration: 1,
//               direction: FadeSlideDirection.btt,
//               child: PrimaryActionButton(
//                 isLoading: true,
//                 buttonLabel: '🚀 Signing In 🚀',
//                 onPressed: () {},
//               ),
//             ),
//           LoggedInState() => FadeInSlide(
//               duration: 1,
//               direction: FadeSlideDirection.btt,
//               child: PrimaryActionButton(
//                 buttonLabel: '✅ Signed In ✅',
//                 onPressed: () {},
//               ),
//             ),
//           NotLoggedInState() => FadeInSlide(
//               duration: 1,
//               direction: FadeSlideDirection.btt,
//               child: PrimaryActionButton(
//                 buttonLabel: '🔄 Retry 🔄',
//                 onPressed: onLogin,
//               ),
//             ),
//           LoginErrorState() => FadeInSlide(
//               duration: 1,
//               direction: FadeSlideDirection.btt,
//               child: PrimaryActionButton(
//                 buttonLabel: '❌ Unable To Sign In ❌',
//                 onPressed: onLogin,
//               ),
//             ),
//         };
//       },
//     );
//   }
// }

