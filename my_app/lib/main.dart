import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum 2 Applications',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Praktikum 2'),
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: const Center(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
