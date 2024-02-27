import 'package:flutter/material.dart';
import 'package:roll_dice/widget/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.purpleRed(),
      ),
    ),
  );
}
