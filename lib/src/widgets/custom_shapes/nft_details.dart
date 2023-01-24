import 'package:flutter/cupertino.dart';

class NFTDetailsCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(30, 0);
    path.cubicTo(13.4315, 0, 0, 13.4315, 0, 30);
    path.lineTo(0, 348);
    path.cubicTo(0, 364.569, 13.4315, 378, 30, 378);
    path.lineTo(55.6176, 378);
    path.cubicTo(60.0359, 378, 63.6176, 374.418, 63.6176, 370);
    path.lineTo(63.6176, 355.153);
    path.cubicTo(63.6176, 338.585, 77.0491, 325.153, 93.6176, 325.153);
    path.lineTo(216.392, 325.153);
    path.cubicTo(232.961, 325.153, 246.392, 338.585, 246.392, 355.153);
    path.lineTo(246.392, 370);
    path.cubicTo(246.392, 374.418, 249.974, 378, 254.392, 378);
    path.lineTo(281, 378);
    path.cubicTo(297.569, 378, 311, 364.569, 311, 348);
    path.lineTo(311, 30);
    path.cubicTo(311, 13.4315, 297.569, 0, 281, 0);
    path.lineTo(30, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
