import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/data/repository/characters/characters_repository.dart';
import 'package:innovatrix_assesment/data/repository/characters/i_characters_repository.dart';
import 'package:innovatrix_assesment/shared/api_client/dio/dio_client_provider.dart';

final charactersRepoProvider = Provider.autoDispose<ICharactersRepository>(
  (ref) {
    return CharactersRepository(dio: ref.watch(dioProvider));
  },
);
