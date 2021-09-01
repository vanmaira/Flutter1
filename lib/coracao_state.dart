import 'package:flutter/material.dart';

class CoracaoPage extends StatefulWidget {
  CoracaoPage({Key? key}) : super(key: key);

  @override
  _CoracaoPageState createState() => _CoracaoPageState();
}

class _CoracaoPageState extends State<CoracaoPage> {
  bool favorito = false;
  int qtde = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  favorito = !favorito;
                  favorito ? qtde += 1 : qtde += 0;
                });
              },
              child: Icon(
                Icons.favorite,
                color: favorito ? Colors.red : Colors.grey,
                size: favorito ? 96 : 56,
              ),
            ),
          ),
          Text('$qtde'),
        ],
      ),
    );
  }
}
