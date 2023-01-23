

import 'package:flutter/material.dart';


class TrendingCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(30,0);
    path_0.cubicTo(13.4315,0,0,13.4314,0,30);
    path_0.lineTo(0,236.716);
    path_0.cubicTo(0,253.284,13.4314,266.716,30,266.716);
    path_0.lineTo(47.3047,266.716);
    path_0.cubicTo(59.455,266.716,69.3047,256.866,69.3047,244.716);
    path_0.lineTo(69.3047,215.595);
    path_0.cubicTo(69.3047,205.654,77.3636,197.595,87.3047,197.595);
    path_0.lineTo(181.345,197.595);
    path_0.cubicTo(193.495,197.595,203.345,187.745,203.345,175.595);
    path_0.lineTo(203.345,30);
    path_0.cubicTo(203.345,13.4315,189.913,0,173.345,0);
    path_0.lineTo(30,0);
    path_0.close();

    Paint paint0Fill = Paint()..style=PaintingStyle.fill;
    paint0Fill.color = const Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_0,paint0Fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}