import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_v2/controllers/startcontroller.dart';
import 'package:project_v2/views/widgets/curvepainter.dart';
import 'package:project_v2/views/widgets/startwidget.dart';


class StartPage extends StatelessWidget {
  final controller = Get.put(StartController());
  @override
  Widget build(BuildContext context) {
    double deviceheight = MediaQuery.of(context).size.height;
    double devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Stack(children: [
          Container(
            height: deviceheight,
            width: devicewidth,
            color: Colors.white,
            child: CustomPaint(
              painter: CurvePainter(),
            ),
          ),
          Positioned(
            child: Opacity(opacity: 0.8,
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  fontSize: 50,
                  
                ),
              ),
            ),
            left: devicewidth * 0.05,
            top: deviceheight*0.05,
          ),
          Positioned(
            child: Opacity(opacity: 0.8,
              child: Text(
                "LOG IN",
                style: TextStyle(
                  fontSize: 50
                  ),)
              ),
            left: devicewidth * 0.5,
            top: deviceheight*0.8,
          ),
          Center(
            child: Logo(2.1),
          ),
          for (var i in RandomLogos(devicewidth, deviceheight)) i
        ])),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
