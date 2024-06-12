import 'package:flutter/material.dart';
import 'package:providerexample/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homepage(),

    );
  }
}
