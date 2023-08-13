import 'package:flutter/material.dart';
import 'dart:async';

class Streampage extends StatelessWidget {
  const Streampage({super.key});
Stream<int> countstream() async* {
  for (int i = 1; i <= 10; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

@override
Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(title: const Text("Stream page")),
  body: StreamBuilder(
    stream: countstream(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(
          child: Text(
            "loading...",
          style: TextStyle(fontSize: 50),
          ),
        );
      } else {
        return Center(
          child: Text(
            '${snapshot.data}',
            style: const TextStyle(fontSize: 50),
           ),
        );
      }
    },
  ),
);
}
}