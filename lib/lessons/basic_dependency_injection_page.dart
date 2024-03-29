import 'package:flutter/material.dart';

import '../lessons/widgets/widgets_a.dart';
import '../lessons/widgets/widget_b.dart';
import '../lessons/widgets/widgets_c.dart';
import 'bloc/counter.dart';

class BasicDependencyInjectionPage extends StatelessWidget {
  BasicDependencyInjectionPage({super.key});

  final Counter myCounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BASIC DEPENDENCY INJECTION"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          WidgetA(myCounter: myCounter),
          const SizedBox(height: 20),
          WidgetB(myCounter:myCounter),
          const SizedBox(height: 20),
          WidgetC(myCounter: myCounter),
        ],
      ),
    );
  }
}