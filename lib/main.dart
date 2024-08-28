import 'package:flutter/material.dart';
import 'package:pokemon/pages/pokemons_page.dart';
import 'package:pokemon/providers/pokemons_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PokemonsProvider(),
      child: MaterialApp(
          title: 'Pokemon app',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const PokemonsPage()),
    );
  }
}
