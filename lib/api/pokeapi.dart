import 'package:quiz_pokemon/models/pokemon.dart';
import 'package:quiz_pokemon/services/api.dart';
import 'package:quiz_pokemon/utils/constants.dart';

class PokeAPI {
  static Future<List<Pokemon>> getPokemonList({int? limit, int? offset}) async {
    limit ??= 150;
    offset ??= 0;

    final jsonData =
        await Api.getData('$pokeApiUrl?limit=$limit&offset=$offset');

    final List<Pokemon> pokemonList = [];

    for (final item in jsonData['results']) {
      pokemonList.add(Pokemon.fromJson(item));
    }

    return pokemonList;
  }
}