// Crie uma tela de cadastro com os campos:
// * nome
// * sobrenome
// * cpf
// * email
// * senha
// Todos os campos devem ter validação.

import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  CadastroPage({Key? key}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://media.giphy.com/media/UWD3w9p7rgDA3xkvM8/giphy.gif?cid=ecf05e47l0q8jbgfphxh8tfnbmfuhb9ermxv9c95ld5l3y5p&rid=giphy.gif&ct=g',
                    height: 100,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (String? texto) {
                  if (texto != null && texto.isNotEmpty) {
                    if (texto.length < 2) {
                      return 'Digite um nome com 2 caracteres ou mais';
                    }
                    //  else {
                    //   return 'Campo obrigatório';
                    // }
                  }
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (String? texto) {
                  if (texto != null && texto.isNotEmpty) {
                    if (texto.length < 2) {
                      return 'Digite um sobrenome com 2 caracteres ou mais';
                    }
                    // else {
                    //   return 'Campo obrigatório';
                    // }
                  }
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Sobrenome',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (String? texto) {
                  if (texto != null && texto.isNotEmpty) {
                    if (texto.length != 11) {
                      return 'Digite apenas os números';
                    }
                    // else {
                    //   return 'Campo obrigatório';
                    // }
                  }
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'CPF (somente números)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (String? texto) {
                  if (texto != null && texto.isNotEmpty) {
                    final telefone = int.tryParse(texto);
                    if (telefone == null) {
                      return "Digite apenas números";
                    }
                  } else {
                    return "Campo obrigatório";
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Telefone',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (String? texto) {
                  if (texto != null && texto.isNotEmpty) {
                    if (!texto.contains('@') || texto.length < 8) {
                      return 'Digite um email válido.';
                    }
                  }
                  // else {
                  //   return 'Campo Obrigatório.';
                  // }
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (String? texto) {
                  if (texto != null && texto.isNotEmpty) {
                    if (texto.length < 8) {
                      return 'Digite uma senha com 8 caracteres ou mais';
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
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      print('Cadastro feito!');
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text('Cadastrar'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
