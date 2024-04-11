import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/bootstrap.dart';
import 'package:innovatrix_assesment/core/local_storage/app_storage_pod.dart';
import 'package:innovatrix_assesment/data/entities/local_theme_entity/theme_storage.dart';
import 'package:innovatrix_assesment/data/entities/local_user_entity/local_user.dart';
import 'package:innovatrix_assesment/init.dart';
import 'package:innovatrix_assesment/shared/riverpod_ext/riverpod_observer.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

final futureInitializerPod = FutureProvider.autoDispose<ProviderContainer>((ref) async {
  ///Additional intial delay duration for app
  // await Future.delayed(const Duration(seconds: 1));
  await (init());
  // await Hive.initFlutter();
  await Isar.initializeIsarCore();

  final dir = await getApplicationDocumentsDirectory();
  final isarLocalDb = await Isar.open(
    [LocalUserSchema, LocalThemeStorageSchema],
    inspector: true,
    directory: dir.path,
  );
  return ProviderContainer(
    overrides: [
      isarProvider.overrideWithValue(isarLocalDb),
    ],
    observers: [
      MyObserverLogger(
        talker: talker,
      ),
    ],
  );
});
