import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    int image = Random().nextInt(5) + 1;
    void changeBoardResponse() {
      setState(() {
        image = Random().nextInt(5) + 1;
      });
    }

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
            changeBoardResponse();
          },
          child: Image.asset("assets/images/ball$image.png"),
        ),
      ),
    );
  }
}
