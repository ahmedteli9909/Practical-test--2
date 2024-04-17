import 'package:flutter/material.dart';
import 'package:practical_task_2/view/home_screen.dart';

void main() {
  runApp(const PracticalTask2());
}

class PracticalTask2 extends StatelessWidget {
  const PracticalTask2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
