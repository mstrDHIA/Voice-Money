import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xff399ffe);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1.0;
    paint.style=PaintingStyle.fill;
    var path = Path();

    //path.lineTo(size.width, size.height);
    path.moveTo(0, size.height);
    path.quadraticBezierTo(size.width*0.4, size.height*0.75, size.width*0.5, size.height*0.5);
    path.quadraticBezierTo(size.width*0.6, size.height*0.25, size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
    var path2 = Path();
    paint.color = Color(0xff2594fb);
    //path.lineTo(size.width, size.height);
    path2.moveTo(0, size.height);
    path2.quadraticBezierTo(size.width*0.4, size.height*0.75, size.width*0.5, size.height*0.5);
    path2.quadraticBezierTo(size.width*0.6, size.height*0.25, size.width, 0);
    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);

    canvas.drawPath(path2, paint);
    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}