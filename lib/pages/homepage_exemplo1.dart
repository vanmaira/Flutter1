import 'package:flutter/material.dart';

//widget propriamente dito

//exemplo statefulwidget
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print('foi essa caraca');
    return Scaffold(
      body: ElevatedButton(
        child: Text('Apertou essa desgraça: $counter vezes!'),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
