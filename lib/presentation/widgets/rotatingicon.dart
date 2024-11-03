
import 'package:flutter/material.dart';

class RotatingWidget extends StatefulWidget {
  @override
  _RotatingWidgetState createState() => _RotatingWidgetState();
}

class _RotatingWidgetState extends State<RotatingWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 5), // Duration of one full rotation
      vsync: this,
    )..repeat(); // This makes the animation loop continuously
  }

  @override
  void dispose() {
    _controller.dispose(); // Always dispose of the controller when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: const Icon(
        Icons.sunny, // Example icon, you can use any widget
        size: 100,
        color: Colors.amber,
      ),
    );
  }
}