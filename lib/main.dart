import 'package:flutter/material.dart';
import 'package:like_app/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(fontFamily: 'Catamaran', fontSize: 40),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
