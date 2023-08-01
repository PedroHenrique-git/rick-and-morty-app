import 'package:rickandmorty_app/domain/character.dart';
import 'package:rickandmorty_app/domain/pagination_info.dart';

class CharacterResponse {
  PaginationInfo? info;
  List<Character>? results;

  CharacterResponse(this.info, this.results);

  factory CharacterResponse.fromJson(Map<String, dynamic> json) {
    List<Character> characters = [];

    for (var character in json['results']) {
      Character c = Character.fromJson(character);
      characters.add(c);
    }

    return CharacterResponse(
        PaginationInfo.fromJson(json['info'] as Map<String, dynamic>),
        characters);
  }
}
