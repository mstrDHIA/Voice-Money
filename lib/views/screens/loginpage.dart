import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_v2/views/widgets/loginwidgets.dart';
import 'package:project_v2/views/widgets/startwidget.dart';

class LoginPage extends StatelessWidget{
      final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double deviceheight = MediaQuery.of(context).size.height;
    double devicewidth = MediaQuery.of(context).size.width;
    var rad=BorderRadius.only(
                  topLeft: Radius.circular(60)
              );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffd8e8f7),
        body: SingleChildScrollView(child: BackGround(context: context,page: "Log In",content: LoginContent(context: context),rad: rad,formkey: formKey))
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}

