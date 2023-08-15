import 'package:flutter/material.dart';
import 'lessons/bloc_builder_page.dart';
import 'lessons/bloc_listener_page.dart';
import 'lessons/bloc_consumer_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocConsumerPage(),
    );
  }
}