import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget criaContainer(Color color) => Container(
        height: 128,
        width: 56,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
      );
  final frutas = <String>[
    'Maçã',
    'Uva',
    'Banana',
    'Manga',
    'Tangerina',
    'Morango',
    'Acerola',
    'Pera'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SoulCode Template"),
      ),
      body: ListView.builder(
        itemCount: frutas.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            color: Colors.teal,
            child: Text(frutas[index]),
          );
        },
      ),
    );
  }
}
