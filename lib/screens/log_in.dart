import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:z_login_ui/constants.dart';
import 'package:z_login_ui/screens/component.dart';

class LogInScreen extends StatefulWidget {
  static final String id = "login_screen";
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PositionSection(
        mainBody: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SvgPicture.asset(
                  "assets/icons/login.svg",
                  height: size.width * 0.50,
                ),
                InputContainer(
                  child: InputTextField(
                    hintText: "Your Email",
                    onChange: (v) {},
                  ),
                ),
                SizedBox(height: 10.0),
                InputContainer(
                  child: InputPasswordField(
                    hintText: "Password",
                    onChange: (v) {},
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                RoundedButton(
                  backColor: kPrimaryColor,
                  textColor: Colors.white,
                  level: "Login",
                  onPress: () {},
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    SizedBox(width: 10.0),
                    // ignore: deprecated_member_use
                    GestureDetector(
                      onTap: () {
                        //
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PositionSection extends StatelessWidget {
  final Widget mainBody;

  PositionSection({this.mainBody});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/login_bottom.png",
              width: size.width * 0.3,
            ),
          ),
          mainBody,
        ],
      ),
    );
  }
}
