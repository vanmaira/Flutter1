import 'package:flutter/material.dart'; //import do material
import 'package:introducao/coracao_state.dart';
import 'pages/login_page.dart';
import 'pages/cadastro_page.dart';
import 'pages/feedback_page.dart';
import 'pages/lista_produtos.dart';
import 'package:introducao/pages/home_page.dart'; //sempre usar esse import pral inkar as páginas

void main() {
  //roda o app flutter
  runApp(App()); //App é a classe stateless que vc criou abaixo
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AulasApp',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      themeMode: ThemeMode.system,
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//widget sem estado
// class App extends StatelessWidget {
//   @override //sobrepoe
//   Widget build(BuildContext context) {
//     // MaterialApp: É um widget que utiliza Material Design. É por meio dele que podemos definir estilos globais, rotas e outras configurações.
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Título da Guia do Navegador',
//       theme: ThemeData(
//         //primary - cor primaria e accent - cor secundaria
//         primaryColor: Colors.cyanAccent,
//         accentColor: Color(0xFFEE39FF),
//       ),
//       home: Scaffold(
//         backgroundColor: Color.fromRGBO(100, 200, 205, 1),
//         appBar: AppBar(
//           title: Text(
//               'Cabeçalho do App'), //'cabeçalho', vai receber a cor primaria
//           centerTitle: true,
//           leading: Icon(Icons.favorite),
//         ),
//         floatingActionButton: FloatingActionButton(
//             //botão flutuante com ícone
//             onPressed: () {},
//             child: Icon(Icons.account_tree_sharp)),
//         body: Center(
//           child: Text(
//             'Aqui nesse corpinho lindo você coloca o conteúdo do seu app pra ele ficar marotão! Ali em baixo tem um botão flutuante simpático com cor cafoninha, porque eu não sei o nome das cores e chutei qualquer uma =)',
//             style: meuEstilo,
//             textAlign: TextAlign.justify,
//           ),
//         ),
//       ),
//     );
//   }
// }

const meuEstilo = TextStyle(
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic,
  fontSize: 20,
  fontFamily: 'lobster',
  color: Colors.white,
);


//modo Senise
// body: Center(
      
//         child: Text(
//           'Olá Corujas!',  
//            style: GoogleFonts.caveat(textStyle: TextStyle(
//             fontSize: 64,
//             fontWeight: FontWeight.w300,
//             letterSpacing: -1.5))
          
//           ),     
//           ),
