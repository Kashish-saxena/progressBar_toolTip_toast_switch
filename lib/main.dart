import 'package:flutter/material.dart';
import 'package:widgets_demo/screens/flutter_toast.dart';
import 'package:widgets_demo/screens/progress_bar_and_tooltip.dart';
import 'package:widgets_demo/screens/slider.dart';
import 'package:widgets_demo/screens/switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SwitchWidget(),
    );
  }
}
