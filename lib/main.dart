import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    int image = Random().nextInt(5) + 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ask Me Anything",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              image = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset("assets/images/ball$image.png"),
        ),
      ),
    );
  }
}
