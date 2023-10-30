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
    int pontuacao = 0;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                'Certos: $pontuacao',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 1,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            semanticChildCount: pokemonList.length,
            physics: const BouncingScrollPhysics(),
            children: [
              if (pokemonList.isNotEmpty) PokemonCard(pokemon: pokemonList[0]),
            ],
          ),
        ),
        SizedBox(height: 20), // Espaço entre a imagem e os botões
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.all(20),
                  ),
                  onPressed: () {
                    // Adicione a lógica desejada para o primeiro botão aqui
                  },
                  child: const Text(
                    "Zapdos",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.all(20),
                  ),
                  onPressed: () {
                    // Adicione a lógica desejada para o segundo botão aqui
                  },
                  child: const Text(
                    "Articuno",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.all(20),
                  ),
                  onPressed: () {
                    // Adicione a lógica desejada para o terceiro botão aqui
                  },
                  child: const Text(
                    "Mewtwo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.all(20),
                  ),
                  onPressed: () {
                    // Adicione a lógica desejada para o quarto botão aqui
                  },
                  child: const Text(
                    "Dodrio",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
