import 'package:flutter/material.dart';
import 'package:malutaS/storyBook.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Kit Demo',
      home: MyForm()
    );
  }
}
