

import 'package:flutter/material.dart';

class TopSellerCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    Path path = Path();
    path.moveTo(10.8793,4.75185);
    path.cubicTo(9.99657,2.19836,7.86038,0,5.15863,0);
    path.lineTo(5,0);
    path.cubicTo(2.23858,0,0,2.23858,0,5);
    path.lineTo(0,43);
    path.cubicTo(0,45.7614,2.23857,48,5,48);
    path.lineTo(130,48);
    path.cubicTo(132.761,48,135,45.7614,135,43);
    path.lineTo(135,5);
    path.cubicTo(135,2.23858,132.761,0,130,0);
    path.lineTo(48.8414,0);
    path.cubicTo(46.1396,0,44.0034,2.19836,43.1207,4.75185);
    path.cubicTo(40.8607,11.2897,34.4971,16,27,16);
    path.cubicTo(19.5029,16,13.1393,11.2897,10.8793,4.75185);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return false;
  }
}