import 'package:flutter/material.dart';
// TODO: Uncomment these after running `flutter pub add http` and `flutter pub add provider`
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:provider/provider.dart';

// API URL (static copy on banjo)
const String apiURL = 'https://people.rit.edu/~jxtadm/340/hpcharacters.json';
// Live API (updates if the source project changes):
// const String apiURL = 'https://potterapi-fedeperin.vercel.app/en/characters';

// TODO: Create HPCharacter class here
// Fields we'll use from the API:
//   fullName (String), nickname (String), hogwartsHouse (String),
//   children (List of Strings), image (String)
/*

If it helps for creating your constructor:

fullName
nickname
hogwartsHouse
children
image

*/

// TODO: Create CharacterProvider class here

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Wrap MaterialApp with ChangeNotifierProvider
    return MaterialApp(
      home: const CharacterPage(),
    );
  }
}

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key});

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wizard Directory'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              // TODO: Call provider clear()
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.download),
              label: const Text('Load Characters'),
              onPressed: () {
                // TODO: Call provider fetchCharacters()
              },
            ),
          ),
          Expanded(
            // TODO: Replace this placeholder with a ListView.builder
            //       that reads from the provider using context.watch()
            child: Center(
              child: Text(
                'No characters loaded',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
