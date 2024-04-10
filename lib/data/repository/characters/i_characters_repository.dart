import 'package:innovatrix_assesment/data/model/character_model.dart';
import 'package:innovatrix_assesment/shared/exception/base_exception.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class ICharactersRepository {
  Future<Result<CharactersModel, APIException>> fetchCharacters();
}
