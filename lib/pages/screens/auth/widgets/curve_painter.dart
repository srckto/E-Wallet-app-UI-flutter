import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  final double leftHeight;
  final double rightHeight;
  final Color color;
  CurvePainter({
    required this.leftHeight,
    required this.color,
    required this.rightHeight,
  });
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = color;
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * leftHeight);
    path.quadraticBezierTo(size.width / 2, size.height - 20, size.width, size.height * rightHeight);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
