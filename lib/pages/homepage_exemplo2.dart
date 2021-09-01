import 'package:flutter/material.dart';
import 'package:introducao/pages/home_page.dart'; //sempre usar esse import

void main() {
  //roda o app flutter
  runApp(App()); //App é a classe stateless que vc criou abaixo
}

//widget sem estado
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Título do Aplicativo',
      home: HomePage(),
      // home: UsuarioWidget(nome: 'Vanessa'),
      debugShowCheckedModeBanner: false, //classe da pagina inicial
      theme: ThemeData(
        primarySwatch: Colors.blueGrey, //cor em todo o app
        primaryColor: Colors.blueAccent,
        accentColor: Colors.lightBlue,
      ),
    );
  }
}

class UsuarioWidget extends StatelessWidget {
  final String nome;
  UsuarioWidget({required this.nome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Olá, pequeno Padawan $nome!'),
    );
  }
}
