import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/core/local_storage/app_storage_pod.dart';
import 'package:innovatrix_assesment/data/repository/login/i_login_repository.dart';
import 'package:innovatrix_assesment/data/repository/login/login_repository.dart';

//the access point for the controller of the ui to interact with the state
final loginRepoProvider = Provider.autoDispose<ILoginRepository>(
  (ref) {
    return LoginRepository(isar: ref.watch(isarProvider));
  },
);
