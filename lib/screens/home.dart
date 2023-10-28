import 'package:flutter/material.dart';
import 'package:quiz_pokemon/api/pokeapi.dart';
import 'package:quiz_pokemon/widgets/pokemon_grid.dart'; // Importe a classe _PokemonGridState
import 'package:quiz_pokemon/models/pokemon.dart'; // Importe as classes relacionadas aos Pokémon

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Pokemon> pokemonList; // Lista de Pokémon

  @override
  void initState() {
    super.initState();
    // Carregue a lista de Pokémon da sua API quando a tela for iniciada
    fetchPokemonList();
  }

  Future<void> fetchPokemonList() async {
    // Substitua esta lógica pela chamada à sua API para obter a lista de Pokémon
    final apiResponse = await PokeAPI.getPokemonList();
    setState(() {
      pokemonList = apiResponse;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      body: pokemonList == true
          ? const Center(child: CircularProgressIndicator())
          : PokemonGrid(
              pokemonList:
                  pokemonList), // Exiba o quiz com a lista de Pokémon carregada
    );
  }
}

class YourApiClass {}
