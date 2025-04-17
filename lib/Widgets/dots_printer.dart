import 'dart:math';
import 'package:flutter/material.dart';

class DotsPainter extends CustomPainter {
  final int numberOfDots;
  
  DotsPainter({this.numberOfDots = 50});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.3)
      ..style = PaintingStyle.fill;

    final random = Random();

    for (int i = 0; i < numberOfDots; i++) {
      final x = random.nextDouble() * size.width;
      final y = random.nextDouble() * size.height;
      final radius = random.nextDouble() * 3 + 1; // Random radius between 1-4

      canvas.drawCircle(Offset(x, y), radius, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}