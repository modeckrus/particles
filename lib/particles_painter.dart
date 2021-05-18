import 'dart:math';

import 'package:flutter/material.dart';

class ParticlesPainter extends CustomPainter {
  late final Paint linePainter;
  late final Paint circlePainter;
  final List<Offset> circles;
  final List<List> lines;
  ParticlesPainter(
      {required Color color, required this.circles, required this.lines}) {
    linePainter = Paint();
    linePainter.color = color;
    linePainter.strokeWidth = 4;
    circlePainter = Paint();
    circlePainter.color = color;
  }
  @override
  void paint(Canvas canvas, Size size) {
    for (var dot in circles) {
      canvas.drawCircle(dot, 10, circlePainter);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
