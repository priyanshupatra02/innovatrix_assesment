import 'package:flutter/widgets.dart';
import 'package:innovatrix_assesment/data/model/character_model.dart';

sealed class CharacterStates {
  const CharacterStates();
}

class InitialCharacterState implements CharacterStates {
  const InitialCharacterState();
}

class FetchingCharacterState implements CharacterStates {
  const FetchingCharacterState();
}

class FetchedCharacterState implements CharacterStates {
  final CharactersModel characters;

  const FetchedCharacterState(this.characters);

  @override
  bool operator ==(covariant FetchedCharacterState other) {
    if (identical(this, other)) return true;

    return other.characters == characters;
  }

  @override
  int get hashCode => characters.hashCode;
}

class CharacterFetchingErrorState implements CharacterStates {
  final String message;

  const CharacterFetchingErrorState(this.message);

  @override
  bool operator ==(covariant CharacterFetchingErrorState other) {
    if (identical(this, other)) return true;

    return other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
