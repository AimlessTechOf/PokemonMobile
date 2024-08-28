import 'package:flutter/cupertino.dart';
import 'package:pokemon/data/http_services.dart';
import 'package:pokemon/models/pokemon_list_model.dart';

class PokemonsProvider extends ChangeNotifier {
  PokemonList pokemonModel = PokemonList(
    count: 0,
    next: '',
    previous: false,
    results: [],
  );
  HttpServices httpService = HttpServices();

  void getPokemonsData() async {
    pokemonModel = await httpService.getPokemons();
    notifyListeners();
  }
}
