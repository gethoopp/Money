import 'package:flutter/material.dart';

class Clippers extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 400;
    final double _yScaling = size.height / 626;
    path.lineTo(3 * _xScaling, 49 * _yScaling);
    path.cubicTo(
      3 * _xScaling,
      27.4609 * _yScaling,
      20.4609 * _xScaling,
      10 * _yScaling,
      42 * _xScaling,
      10 * _yScaling,
    );
    path.cubicTo(
      42 * _xScaling,
      10 * _yScaling,
      338 * _xScaling,
      10 * _yScaling,
      338 * _xScaling,
      10 * _yScaling,
    );
    path.cubicTo(
      359.539 * _xScaling,
      10 * _yScaling,
      377 * _xScaling,
      27.4609 * _yScaling,
      377 * _xScaling,
      49 * _yScaling,
    );
    path.cubicTo(
      377 * _xScaling,
      49 * _yScaling,
      377 * _xScaling,
      379.412 * _yScaling,
      377 * _xScaling,
      379.412 * _yScaling,
    );
    path.cubicTo(
      377 * _xScaling,
      394.925 * _yScaling,
      367.806 * _xScaling,
      408.963 * _yScaling,
      353.585 * _xScaling,
      415.162 * _yScaling,
    );
    path.cubicTo(
      353.585 * _xScaling,
      415.162 * _yScaling,
      3 * _xScaling,
      568 * _yScaling,
      3 * _xScaling,
      568 * _yScaling,
    );
    path.cubicTo(
      3 * _xScaling,
      568 * _yScaling,
      3 * _xScaling,
      49 * _yScaling,
      3 * _xScaling,
      49 * _yScaling,
    );
    path.cubicTo(
      3 * _xScaling,
      49 * _yScaling,
      3 * _xScaling,
      49 * _yScaling,
      3 * _xScaling,
      49 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class SmallClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(388 * _xScaling, 390 * _yScaling);
    path.cubicTo(
      388 * _xScaling,
      411.539 * _yScaling,
      370.539 * _xScaling,
      429 * _yScaling,
      349 * _xScaling,
      429 * _yScaling,
    );
    path.cubicTo(
      349 * _xScaling,
      429 * _yScaling,
      53 * _xScaling,
      429 * _yScaling,
      53 * _xScaling,
      429 * _yScaling,
    );
    path.cubicTo(
      31.4609 * _xScaling,
      429 * _yScaling,
      14 * _xScaling,
      411.539 * _yScaling,
      14 * _xScaling,
      390 * _yScaling,
    );
    path.cubicTo(
      14 * _xScaling,
      390 * _yScaling,
      14 * _xScaling,
      190.689 * _yScaling,
      14 * _xScaling,
      190.689 * _yScaling,
    );
    path.cubicTo(
      14 * _xScaling,
      174.905 * _yScaling,
      23.5138 * _xScaling,
      160.677 * _yScaling,
      38.1005 * _xScaling,
      154.647 * _yScaling,
    );
    path.cubicTo(
      38.1005 * _xScaling,
      154.647 * _yScaling,
      388 * _xScaling,
      10 * _yScaling,
      388 * _xScaling,
      10 * _yScaling,
    );
    path.cubicTo(
      388 * _xScaling,
      10 * _yScaling,
      388 * _xScaling,
      390 * _yScaling,
      388 * _xScaling,
      390 * _yScaling,
    );
    path.cubicTo(
      388 * _xScaling,
      390 * _yScaling,
      388 * _xScaling,
      390 * _yScaling,
      388 * _xScaling,
      390 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
