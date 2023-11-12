import 'package:flutter/cupertino.dart';

class Customshape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(width-30, 0);
    // path.quadraticBezierTo(width/2, height, width, height-50);
    //path.cubicTo(width / 2 - width / 8, 0, width / 2 - width / 8, height / 2, width / 2, height / 2);
    // path.cubicTo(x1, y1, x2, y2, x3, y3)
    path.cubicTo(width, 20, width, height+115, 0, height-30);
    //path.quadraticBezierTo(10, 10, 100, 100);
    // path.conicTo(10, 10, 50,50, 0.5);
    // path.lineTo(5, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}