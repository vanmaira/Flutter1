import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(100, 200, 255, 1),
      appBar: AppBar(
        title: Text('AppBar coloridinha'),
        centerTitle: true,
        leading: Icon(Icons.favorite),
        backgroundColor: Color.fromRGBO(80, 227, 59, 89),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.notification_important),
      ),
    );
  }
}
