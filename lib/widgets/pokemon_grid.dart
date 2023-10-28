import 'package:flutter/material.dart';
import 'package:quiz_pokemon/models/pokemon.dart';
import 'package:quiz_pokemon/widgets/pokemon_card.dart';

class PokemonGrid extends StatefulWidget {
  const PokemonGrid({required this.pokemonList, super.key});
  final List<Pokemon> pokemonList;

  @override
  State<PokemonGrid> createState() => _PokemonGridState();
}

class _PokemonGridState extends State<PokemonGrid> {
  @override
  Widget build(BuildContext context) {
    var pokemonList = widget.pokemonList;

    return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: GridView.count(
            padding: const EdgeInsets.all(7),
            crossAxisCount: 1, // Defina 1 para listar apenas um Pokémon
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            semanticChildCount: pokemonList.length,
            childAspectRatio: 200 / 244,
            physics: const BouncingScrollPhysics(),
            children: [
              if (pokemonList.isNotEmpty)
                PokemonCard(pokemon: pokemonList[0]),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                /*setState(() {
                  stateMachine.nextState(1);
                });*/
              },
              child: Text(
                "teste",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                /*setState(() {
                  stateMachine.nextState(1);
                });*/
              },
              child: Text(
                "teste",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                /*setState(() {
                  stateMachine.nextState(1);
                });*/
              },
              child: Text(
                "teste",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                /*setState(() {
                  stateMachine.nextState(1);
                });*/
              },
              child: Text(
                "teste",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
