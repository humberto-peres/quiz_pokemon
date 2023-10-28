import 'package:quiz_pokemon/utils/constants.dart';
import 'dart:math';

class Pokemon {
  final String name;
  final String url;
  final int id;

  get image => '$pokemonImgUrl/$id.png';

  Pokemon({required this.name, required this.url, required this.id});

  factory Pokemon.fromJson(Map<String, dynamic> jsonData) {
    return Pokemon(name: jsonData['name'], url: jsonData['url'], id: Random().nextInt(150) + 1);
  }

  get wrongAnswers => null;


}
