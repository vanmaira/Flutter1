/*
* Crie uma tela de feedback do usuário com os campos:
* nome, email, nota do serviço(0 a 10) e opinião.
* Com um botão para enviar. Todos os campos devem ser
* validados.
*/

import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  FeedbackPage({Key? key}) : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
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
                'Por favor, nos dê seu Feedback com uma nota pelo nosso serviço e deixe uma mensagem.',
                style: textStyles.headline6,
                textAlign: TextAlign.center,
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
                  if (texto != null) {
                    if (texto.length > 10 || texto.length > 0) {
                      return 'Deixe uma nota de 0 (ruim) a 10 (ótimo)';
                    }
                    //  else {
                    //   return 'Campo obrigatório';
                    // }
                  }
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Nota',
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
                      return 'Por favor, escreva no mínimo uma palavra.';
                    }
                  }
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Mensagem',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      print('Feedback enviado!');
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text('Enviar'),
                  ),
                ),
              ),
              Text(
                'Obrigado! Sua opinião é muito importante para nós.',
                style: textStyles.headline6,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
