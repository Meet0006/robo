import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int randomNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[600],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(
            child: Text(
              'Ask Me Anything',
            ),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              // ignore: deprecated_member_use
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  child: Image.asset('images/ball$randomNumber.png'),
                  onPressed: () {
                    setState(
                      () {
                        randomNumber = Random().nextInt(5) + 1;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
