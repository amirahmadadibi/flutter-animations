import 'package:animations/opacity_animation.dart';
import 'package:animations/position_animation.dart';
import 'package:animations/rotation_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RotationAnimation(),
    );
  }
}
