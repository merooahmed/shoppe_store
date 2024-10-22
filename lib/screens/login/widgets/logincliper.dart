import 'package:flutter/material.dart';

class LoginCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 460, size.height - 50);
    var firstStart = Offset(size.width * .2, size.height + 50);
    var firstEnd = Offset(size.width * .5, size.height - 120);

    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width * .9, size.height * .5);
    var secondEnd = Offset(size.width, 0);

    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
