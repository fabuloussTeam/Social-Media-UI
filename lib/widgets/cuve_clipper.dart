import 'package:flutter/material.dart';

class CurveClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size){

    // print(size.width); la largeur de l'image : 375,0
    // Print(size.height); la hauteur de l'image: 266.8
    // on a sinde notre image a couper en 5 en commencen par le point
    //d'origine path.lineTo()
    Path path = Path();
    path.lineTo(0, 4 * size.height / 5);
    Offset curvePoint1 = Offset(size.width / 4, size.height);
    Offset centerPoint = Offset(size.width / 2, 4 * size.height / 5);
    path.quadraticBezierTo(
        curvePoint1.dx,
        curvePoint1.dy,
        centerPoint.dx,
        centerPoint.dy
    );
    Offset curvePoint2 = Offset(3 * size.width / 4, 3 * size.height / 5);
    Offset endPoint = Offset(size.width, 4 * size.height / 5);
    path.quadraticBezierTo(
        curvePoint2.dx,
        curvePoint2.dy,
        endPoint.dx,
        endPoint.dy
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
   return false;
  }
}