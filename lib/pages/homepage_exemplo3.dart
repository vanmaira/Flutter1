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
    return Scaffold(
      backgroundColor: Color.fromRGBO(100, 200, 255, 1),
      appBar: AppBar(
        title: Text('AppBar coloridinha'),
        centerTitle: true,
        leading: Icon(Icons.favorite),
      ),
      floatingActionButton: FloatingActionButton(
        //FAB
        onPressed: () {},
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
