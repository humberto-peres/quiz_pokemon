import 'package:flutter/material.dart';
import 'package:quiz_pokemon/models/pokemon.dart';
import 'package:quiz_pokemon/widgets/pokemon_card_data.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({required this.pokemon, super.key});
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(7),
      enableFeedback: true,
      splashColor: Colors.red.shade50,
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(7),
        child: Stack(
          children: [
            PokemonCardData(pokemon: pokemon),
          ],
        ),
      ),
    );
  }
}