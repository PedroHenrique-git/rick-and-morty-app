import 'package:dio/dio.dart';
import 'package:rickandmorty_app/domain/character_response.dart';

class RickAndMortyService {
  final http = Dio();

  String baseURL = 'https://rickandmortyapi.com';

  Future<CharacterResponse> getCharacters({page = 1}) async {
    final response = await http.get('$baseURL/api/character?page=$page');

    if (response.statusCode == 200) {
      return CharacterResponse.fromJson(response.data);
    }

    throw DioException(requestOptions: response.requestOptions);
  }
}
