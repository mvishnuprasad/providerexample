import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/home.dart';
import 'package:providerexample/list_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberslistProvider())
      ],
      child: MaterialApp(
        home: homepage(),
      ),
    );
  }
}
