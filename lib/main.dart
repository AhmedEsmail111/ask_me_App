import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            'Ask Me Anything !',
          ),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: AskApp(),
      ),
    ),
  );
}

class AskApp extends StatefulWidget {
  @override
  _AskAppState createState() => _AskAppState();
}

class _AskAppState extends State<AskApp> {
  int imageNum = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Expanded(
          child: Image.asset('assets/images/ball$imageNum.png'),
        ),
        onPressed: () {
          changeNum();
        },
      ),
    );
  }

  void changeNum() {
    setState(() {
      imageNum = Random().nextInt(5) + 1;
    });
  }
}
