import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/core/local_storage/app_storage_pod.dart';
import 'package:innovatrix_assesment/data/repository/signup/i_signup_repository.dart';
import 'package:innovatrix_assesment/data/repository/signup/signup_repository.dart';

//the access point for the controller of the ui to interact with the state
final signupRepoProvider = Provider.autoDispose<ISignupRepository>(
  (ref) {
    return SignupRepository(
      isar: ref.watch(isarProvider),
    );
  },
);
