import 'package:dio/dio.dart';
import 'package:innovatrix_assesment/const/app_urls.dart';
import 'package:innovatrix_assesment/data/model/character_model.dart';
import 'package:innovatrix_assesment/shared/exception/base_exception.dart';
import 'package:multiple_result/multiple_result.dart';

import 'i_characters_repository.dart';

class CharactersRepository implements ICharactersRepository {
  final Dio dio;

  CharactersRepository({required this.dio});

  @override
  Future<Result<CharactersModel, APIException>> fetchCharacters() async {
    final result = await dio.post(
      AppUrls.characterApiUrl,
      data: {
        'query': r'''
            query {
              characters {
                results {
                  name
                  status
                  image
                  species
                }
              }
            }
          '''
      },
    );
    if (result.statusCode == 200 || result.statusCode == 201) {
      return Success(CharactersModel.fromMap(result.data));
    } else {
      return Error(APIException.fromMap(result.data));
    }
  }
}
