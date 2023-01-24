import 'package:flutter/material.dart';

class RecentCustomShape extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(0,size.height*0.2803661);
    path_0.cubicTo(0,size.height*0.2390232,size.width*0.007066481,size.height*0.2003554,size.width*0.01887636,size.height*0.1770723);
    path_0.lineTo(size.width*0.09768580,size.height*0.02170536);
    path_0.cubicTo(size.width*0.1048593,size.height*0.007563625,size.width*0.1133383,0,size.width*0.1220191,0);
    path_0.lineTo(size.width*0.9567901,0);
    path_0.cubicTo(size.width*0.9806543,0,size.width,size.height*0.05596446,size.width,size.height*0.1250000);
    path_0.lineTo(size.width,size.height*0.8750000);
    path_0.cubicTo(size.width,size.height*0.9440357,size.width*0.9806543,size.height,size.width*0.9567901,size.height);
    path_0.lineTo(size.width*0.04320988,size.height);
    path_0.cubicTo(size.width*0.01934568,size.height,0,size.height*0.9440357,0,size.height*0.8750000);
    path_0.lineTo(0,size.height*0.2803661);
    path_0.close();

    Paint paint0Fill = Paint()..style=PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0,paint0Fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
