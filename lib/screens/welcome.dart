import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:z_login_ui/constants.dart';
import 'package:z_login_ui/screens/component.dart';
import 'package:z_login_ui/screens/log_in.dart';
import 'package:z_login_ui/screens/register_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static final String id = "welcome_screen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PositionSection(
      mainBody: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Welcome",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.width * 0.55,
            ),
            RoundedButton(
              backColor: kPrimaryColor,
              textColor: Colors.white,
              level: "Login",
              onPress: () {
                Navigator.pushNamed(context, LogInScreen.id);
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            RoundedButton(
              backColor: kPrimaryLightColor,
              textColor: Colors.black87,
              level: "Register",
              onPress: () {
                Navigator.pushNamed(context, RegisterScreen.id);
              },
            ),
          ],
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
      height: size.height,
      width: double.infinity,
      child: Stack(
        //alignment: Alignment.center,
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
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.2,
            ),
          ),
          mainBody,
        ],
      ),
    );
  }
}
