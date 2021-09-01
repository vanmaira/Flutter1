import 'package:flutter/material.dart';

class DadosPage extends StatefulWidget {
  final String email;
  final String senha;
  DadosPage(this.email, this.senha);

  @override
  _DadosPageState createState() => _DadosPageState();
}

class _DadosPageState extends State<DadosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados do usuário'),
      ),
      body: Column(
        children: [
          Text(widget.email),
          Text(widget.senha),
          ElevatedButton(
            child: Text('Voltar'),
            onPressed: () {
              Navigator.pop(context, 'volta o dado pelo push, no console');
            },
          )
        ],
      ),
    );
  }
}
