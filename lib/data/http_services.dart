import 'package:pokemon/models/pokemon_list_model.dart';
import 'package:http/http.dart' as http;
import 'package:pokemon/models/pokemon_model.dart';

class HttpServices {
  final String _url = "https://pokeapi.co/api/v2";

  Future<PokemonList> getPokemons() async {
    Uri uri = Uri.parse('$_url/pokemon');
    dynamic response = await http.get(uri);

    if (response.statusCode == 200) {
      return pokemonListFromJson(response.body);
    } else {
      throw ('Error al obtener pokemons');
    }
  }

  Future<Pokemon> getPokemon(String id) async {
    Uri uri = Uri.parse('$_url/pokemon/$id');
    dynamic response = await http.get(uri);

    if (response.statusCode == 200) {
      return pokemonFromJson(response.body);
    } else {
      throw ('Error al obtener pokemon: $id');
    }
  }
}
