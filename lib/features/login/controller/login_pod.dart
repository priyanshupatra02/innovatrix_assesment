import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/features/login/controller/notifier/login_notifier.dart';
import 'package:innovatrix_assesment/features/login/state/login_states.dart';

final loginProvider =
    AsyncNotifierProvider.autoDispose<LoginAsyncNotifier, LoginState>(LoginAsyncNotifier.new);
