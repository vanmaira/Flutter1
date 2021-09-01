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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SoulCode Template"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            criaContainer(Colors.deepPurple),
            criaContainer(Colors.purple),
            criaContainer(Colors.orange),
            criaContainer(Colors.amber),
            criaContainer(Colors.deepPurple),
            criaContainer(Colors.purple),
            criaContainer(Colors.orange),
            criaContainer(Colors.amber),
          ],
        ),
      ),
    );
  }
}
