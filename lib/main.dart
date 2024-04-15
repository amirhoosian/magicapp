import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blueAccent.shade100,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(
                child: Text(
              "Ask Me Anything",
              style: TextStyle(color: Colors.white, fontSize: 35.0),
            )),
          ),
          body: ball(),
        ),
      ),
    );
  }
}

class ball extends StatefulWidget {
  const ball({super.key});

  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  int qball = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
            onPressed: () {
              setState(() {
                qball = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$qball.png')),
      ),
    );
  }
}
