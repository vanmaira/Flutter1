import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:introducao/pages/cadastro_page.dart';
import 'package:introducao/pages/dados_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            // DrawerHeader(
            //   child: Text(
            //     'Menuzin',
            //     style: TextStyle(fontSize: 24, color: Colors.white),
            //   ),
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //           image: NetworkImage(
            //               'data:image/jpeg;base64,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')),
            //       // color: Colors.deepOrange,
            //       gradient:
            //           LinearGradient(colors: [Colors.orange, Colors.black])),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text('Vanessinha'),
              accountEmail: Text('nhe@nhe.com'),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person),
              ),
              otherAccountsPictures: [CircleAvatar(child: Icon(Icons.person))],
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configura a bagaça'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CadastroPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Socorrooo'),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Entrar',
                style: textStyles.headline5,
                textAlign: TextAlign.center,
              ),
              Text(
                'Bem vindo(a) de volta!',
                style: textStyles.subtitle1,
              ),
              TextFormField(
                onChanged: (String texto) {
                  email = texto;
                },
                validator: (String? texto) {
                  if (texto != null && texto.isNotEmpty) {
                    if (!texto.contains('@') || texto.length < 8) {
                      return 'Digite um email válido.';
                    }
                  } else {
                    return 'Campo Obrigatório.';
                  }
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  // hintText: 'E-mail', feinho, o outro é mais legal
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                onChanged: (String texto) {
                  senha = texto;
                },
                validator: (String? texto) {
                  if (texto != null && texto.isNotEmpty) {
                    if (texto.length < 6) {
                      return 'Digite uma senha com 6 caracteres ou mais';
                    }
                    // else {
                    //   return 'Campo obrigatório';
                    // }
                  }
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState?.validate() ?? false) {
                      final data = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DadosPage(email, senha)),
                      );
                      print(data);
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text('Login'),
                  ),
                ),
              ),
              TextButton(
                child: Text('Criar Conta'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
