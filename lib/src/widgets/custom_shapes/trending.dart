import 'dart:ui' as ui show Image;

import 'package:flutter/rendering.dart';

class TrendingCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width*0.1470588,0);
    path_0.cubicTo(size.width*0.06584069,0,0,size.height*0.05030487,0,size.height*0.1123596);
    path_0.lineTo(0,size.height*0.8865768);
    path_0.cubicTo(0,size.height*0.9486292,size.width*0.06584020,size.height*0.9989363,size.width*0.1470588,size.height*0.9989363);
    path_0.lineTo(size.width*0.2318858,size.height*0.9989363);
    path_0.cubicTo(size.width*0.2914461,size.height*0.9989363,size.width*0.3397289,size.height*0.9620449,size.width*0.3397289,size.height*0.9165393);
    path_0.lineTo(size.width*0.3397289,size.height*0.8074719);
    path_0.cubicTo(size.width*0.3397289,size.height*0.7702397,size.width*0.3792333,size.height*0.7400562,size.width*0.4279642,size.height*0.7400562);
    path_0.lineTo(size.width*0.8889461,size.height*0.7400562);
    path_0.cubicTo(size.width*0.9485049,size.height*0.7400562,size.width*0.9967892,size.height*0.7031648,size.width*0.9967892,size.height*0.6576592);
    path_0.lineTo(size.width*0.9967892,size.height*0.1123596);
    path_0.cubicTo(size.width*0.9967892,size.height*0.05030524,size.width*0.9309461,0,size.width*0.8497304,0);
    path_0.lineTo(size.width*0.1470588,0);
    path_0.close();


    return path_0;

    Paint paint0Fill = Paint()..style = PaintingStyle.stroke;
    paint0Fill.color = const Color(0xffC4C4C4).withOpacity(1.0);
    //canvas.drawPath(path_0,paint0Fill);
    //canvas.drawImage(background, Offset.zero, paint0Fill);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
