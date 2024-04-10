import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/data/model/character_model.dart';
import 'package:innovatrix_assesment/data/repository/characters/characters_repository_pod.dart';

final getCharactersProvider = FutureProvider.autoDispose<CharactersModel>((ref) async {
  final result = await ref.watch(charactersRepoProvider).fetchCharacters();
  return result.when((chaaractersModel) => chaaractersModel, (error) => throw (error.errorMessage));
});
