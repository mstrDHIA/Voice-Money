import 'package:flutter/material.dart';
import 'package:project_v2/views/widgets/startwidget.dart';

Widget BackGround({context, String page = "Login", content, rad, formkey}) {
  double deviceheight = MediaQuery.of(context).size.height;
  double devicewidth = MediaQuery.of(context).size.width;
  return Column(
    children: [
      SizedBox(
        height: deviceheight * 0.02,
      ),
      Logo(3.5),
      SizedBox(
        height: deviceheight * 0.01,
      ),
      Center(
        child: Opacity(
          opacity: 0.8,
          child: Text(
            "Voice Money",
            style: TextStyle(
                fontSize: 37,
                color: Colors.black87,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      SizedBox(
        height: deviceheight * 0.02,
      ),
      Container(
        width: devicewidth,
        decoration: BoxDecoration(
            color: Color(0xffFAFAFA),
            borderRadius: rad,
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, -1), blurRadius: 10)
            ]),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: deviceheight * 0.02,
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  "Log In",
                  style: TextStyle(fontSize: 30, color: Colors.black87),
                ),
              ),
              LoginContent(context: context, formkey: formkey)
            ],
          ),
        ),
      )
    ],
  );
}

Widget LoginContent({context, formkey}) {
  double deviceheight = MediaQuery.of(context).size.height;
  double devicewidth = MediaQuery.of(context).size.width;
  return Form(
    key: formkey,
    child: Column(
      children: [
        SizedBox(
          height: deviceheight * 0.02,
        ),
        LoginInput(
            context: context,
            placeholder: "username",
            ic: Icons.person,
            ispassword: false),
        SizedBox(
          height: deviceheight * 0.02,
        ),
        LoginInput(
            context: context,
            placeholder: "password",
            ic: Icons.lock,
            ispassword: true),
        SizedBox(
          height: deviceheight * 0.02,
        ),
        LoginButton(context: context, formKey: formkey),
        SizedBox(
          height: deviceheight * 0.02,
        ),
        
        RichText(
            text: TextSpan(
                text: "Forgot your password ? ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17
                ),
                children: [
                  TextSpan(text: "Click Here",
                   style: TextStyle(
                  color: Colors.blue
                ),
                  ),
                  
                  ])),
                  SizedBox(
          height: deviceheight * 0.01,
        ),
                  RichText(
            text: TextSpan(
                text: "Don't have an account ? ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17
                ),
                children: [
                  TextSpan(text: "Sign Up",
                   style: TextStyle(
                  color: Colors.blue
                ),
                  ),
                  
                  ])),
                  SizedBox(
          height: deviceheight * 0.02,
        ),
        
        Text("OR"),
         SizedBox(
          height: deviceheight * 0.02,
        ),
        SocialButton(context: context,social: "google",sc: 2),
         SizedBox(
          height: deviceheight * 0.025,
        ),
        SocialButton(context: context,social: "facebook",sc: 5.5),
         SizedBox(
          height: deviceheight * 0.035,
        ),

      ],
    ),
  );
}

Widget LoginInput({context, placeholder, ic, ispassword}) {
  double deviceheight = MediaQuery.of(context).size.height;
  double devicewidth = MediaQuery.of(context).size.width;
  return Container(
    width: devicewidth * 0.8,
    height: deviceheight * 0.07,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(40)),
        boxShadow: [
          BoxShadow(
              color: Color(0x55399FFE), offset: Offset(0, 3), blurRadius: 10)
        ]),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: TextFormField(
          obscureText: ispassword,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "This field can't be empty";
            }
          },
          decoration: InputDecoration(
            labelText: placeholder,
            labelStyle: TextStyle(),
            
            suffixIcon: Icon(ic),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    ),
  );
}

Widget LoginButton({context, formKey}) {
  double deviceheight = MediaQuery.of(context).size.height;
  double devicewidth = MediaQuery.of(context).size.width;
  return MaterialButton(
    onPressed: () {
      // Validate returns true if the form is valid, or false otherwise.
      if (formKey.currentState!.validate()) {
        // If the form is valid, display a snackbar. In the real world,
        // you'd often call a server or save the information in a database.
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Processing Data')));
      }
    },
    child: Text(
      "Login",
      style: TextStyle(color: Colors.white, fontSize: 18),
    ),
    color: Color(0xff399ffe),
    elevation: 6,
    minWidth: devicewidth * 0.3,
    height: deviceheight * 0.07,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  );
}

Widget SocialButton({context,String social="google",double sc=1}) {
  String src="assets/"+social+".png";
   double deviceheight = MediaQuery.of(context).size.height;
  double devicewidth = MediaQuery.of(context).size.width;
  return MaterialButton(
    onPressed: () {
    print(social);
    },
    child: Image.asset(src,
    scale: sc,),
    color: Colors.white,
    elevation: 4,
    minWidth: devicewidth * 0.3,
    height: deviceheight * 0.07,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  );
}
