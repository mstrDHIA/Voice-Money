import 'package:flutter/material.dart';

Widget Logo(double scale){
return Image.asset(
  "assets/logoo.png",
  scale: scale,
  
  );
}


List<Widget> RandomLogos(devicewidth,deviceheight){
  return[
            Positioned(
            child:
            RotationTransition(turns: AlwaysStoppedAnimation(310 / 360),
            child: Logo(16)),
            left: devicewidth*0.02,
            top: -10),
             Positioned(child: RotationTransition(turns: AlwaysStoppedAnimation(15 / 360),
            child: Logo(16)),
            left: devicewidth*0.85,
            top: -10,),
             Positioned(child: RotationTransition(turns: AlwaysStoppedAnimation(50 / 360),
            child: Logo(16)),
            left: devicewidth*0.3,
            top: deviceheight*0.15,),
             Positioned(child: RotationTransition(turns: AlwaysStoppedAnimation(45 / 360),
            child: Logo(7)),
            left: devicewidth*0.1,
            top: deviceheight*0.25,),
             Positioned(child: RotationTransition(turns: AlwaysStoppedAnimation(200 / 360),
            child: Logo(16)),
            left: devicewidth*0.05,
            top: deviceheight*0.54,),
             Positioned(child: Logo(7),
            left: -25,
            top: deviceheight*0.7,),
             Positioned(child: RotationTransition(turns: AlwaysStoppedAnimation(200 / 360),
            child: Logo(7)),
            left: devicewidth*0.8,
            top: deviceheight*0.12,),
             Positioned(child: RotationTransition(turns: AlwaysStoppedAnimation(50 / 360),
            child: Logo(16)),
            left: devicewidth*0.88,
            top: deviceheight*0.36,),
            Positioned(child: RotationTransition(turns: AlwaysStoppedAnimation(330 / 360),
            child: Logo(16)),
            left: devicewidth*0.52,
            top: deviceheight*0.7,),
             Positioned(child: RotationTransition(turns: AlwaysStoppedAnimation(20 / 360),
            child: Logo(7)),
            right: -10,
            top: deviceheight*0.65,),
             
             Positioned(child: RotationTransition(turns: AlwaysStoppedAnimation(100 / 360),
            child: Logo(16)),
            left: devicewidth*0.91,
            bottom: -2,),
             Positioned(child: Logo(7),
            left: devicewidth*0.3,
            bottom: -36,),];

}