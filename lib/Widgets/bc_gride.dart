import 'package:flutter/material.dart';

class GridBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      // ignore: deprecated_member_use
      ..color = Colors.white.withOpacity(0.1)
      ..strokeWidth = 1;
      paint.shader = LinearGradient(
        // ignore: deprecated_member_use
        colors: [const Color.fromARGB(255, 255, 255, 255).withOpacity(1), const Color.fromARGB(255, 252, 252, 252).withOpacity(0.1)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    // Only use the upper half of the screen
    final upperHalfHeight = size.height * 1;

    // Draw vertical lines
    double verticalSpacing = 60;
    for (double x = 0; x <= size.width; x += verticalSpacing) {
      canvas.drawLine(
        Offset(x, 0),
        Offset(x, upperHalfHeight), // Stop at half height
        paint,
      );
    }

    // Draw horizontal lines
    double horizontalSpacing = 60;
    for (double y = 0; y <= upperHalfHeight; y += horizontalSpacing) { // Only loop to half height
      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}