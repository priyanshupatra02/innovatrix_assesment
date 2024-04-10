import 'dart:convert';

class CharactersModel {
  final CharactersData data;

  CharactersModel({
    required this.data,
  });

  CharactersModel copyWith({
    CharactersData? data,
  }) =>
      CharactersModel(
        data: data ?? this.data,
      );

  factory CharactersModel.fromJson(String str) => CharactersModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CharactersModel.fromMap(Map<String, dynamic> json) => CharactersModel(
        data: CharactersData.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data.toMap(),
      };
}

class CharactersData {
  final Characters characters;

  CharactersData({
    required this.characters,
  });

  CharactersData copyWith({
    Characters? characters,
  }) =>
      CharactersData(
        characters: characters ?? this.characters,
      );

  factory CharactersData.fromJson(String str) => CharactersData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CharactersData.fromMap(Map<String, dynamic> json) => CharactersData(
        characters: Characters.fromMap(json["characters"]),
      );

  Map<String, dynamic> toMap() => {
        "characters": characters.toMap(),
      };
}

class Characters {
  final List<CharacterResults> results;

  Characters({
    required this.results,
  });

  Characters copyWith({
    List<CharacterResults>? results,
  }) =>
      Characters(
        results: results ?? this.results,
      );

  factory Characters.fromJson(String str) => Characters.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Characters.fromMap(Map<String, dynamic> json) => Characters(
        results: List<CharacterResults>.from(json["results"].map((x) => CharacterResults.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "results": List<dynamic>.from(results.map((x) => x.toMap())),
      };
}

class CharacterResults {
  final String name;
  final String status;
  final String image;
  final String species;

  CharacterResults({
    required this.name,
    required this.status,
    required this.image,
    required this.species,
  });

  CharacterResults copyWith({
    String? name,
    String? status,
    String? image,
    String? species,
  }) =>
      CharacterResults(
        name: name ?? this.name,
        status: status ?? this.status,
        image: image ?? this.image,
        species: species ?? this.species,
      );

  factory CharacterResults.fromJson(String str) => CharacterResults.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CharacterResults.fromMap(Map<String, dynamic> json) => CharacterResults(
        name: json["name"],
        status: json["status"],
        image: json["image"],
        species: json["species"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "status": status,
        "image": image,
        "species": species,
      };
}
