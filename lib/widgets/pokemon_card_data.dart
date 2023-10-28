import 'package:flutter/material.dart';
import 'package:quiz_pokemon/models/pokemon.dart';

class PokemonCardData extends StatelessWidget {
  const PokemonCardData({required this.pokemon, Key? key}) : super(key: key);
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.network(
                pokemon.image,
                fit: BoxFit.contain,
                alignment: Alignment.bottomRight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
