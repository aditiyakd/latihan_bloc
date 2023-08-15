import 'package:flutter/material.dart';
import 'package:latihan_bloc/lessons/bloc/counter.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});

  final Counter myCounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Cubit"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            initialData: myCounter.init,
            stream: myCounter.stream,
            builder: (context, snapshot) {
              return Column(
                children: [
                  Text(
                    "${snapshot.data}",
                    style: const TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: myCounter.decrement,
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: myCounter.increment,
              )
            ],
          ),
        ],
      ),
    );
  }
}