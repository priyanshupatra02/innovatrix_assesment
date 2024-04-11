import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

/// This provider used for Storing Isar db which you can override on
/// bootstrap function on start of the app
final isarProvider = Provider.autoDispose<Isar>(
  (ref) => throw UnimplementedError("appBoxProvider is not overriden"),
  name: 'isarProvider',
);
