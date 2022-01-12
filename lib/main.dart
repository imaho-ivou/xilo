import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('test'), centerTitle: true),
        body: Xilo(),
      ),
    );
  }
}

class Xilo extends StatefulWidget {
  const Xilo({Key? key}) : super(key: key);

  @override
  _XiloState createState() => _XiloState();
}

class _XiloState extends State<Xilo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}
