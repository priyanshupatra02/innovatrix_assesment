import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/features/signup/controller/notifier/signup_notifier.dart';
import 'package:innovatrix_assesment/features/signup/state/signup_states.dart';

final signupProvider =
    AsyncNotifierProvider.autoDispose<SignupAsyncNotifier, SignupState>(SignupAsyncNotifier.new);
