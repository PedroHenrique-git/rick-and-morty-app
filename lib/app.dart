import 'package:flutter/material.dart';
import 'package:rickandmorty_app/screens/characters.dart';
import 'package:rickandmorty_app/screens/episodes.dart';
import 'package:rickandmorty_app/screens/index.dart';
import 'package:rickandmorty_app/screens/locations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => const Index(),
          '/characters': (context) => const CharactersScreen(),
          '/episodes': (context) => const EpisodesScreen(),
          '/locations': (context) => const LocationsScreen()
        },
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.grey[900]),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
          useMaterial3: true,
        ));
  }
}
