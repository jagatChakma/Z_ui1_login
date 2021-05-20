import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:z_login_ui/constants.dart';
import 'package:z_login_ui/screens/component.dart';

class RegisterScreen extends StatelessWidget {
  static final String id = "register_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PositionSection(
        mainBody: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Registration",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SvgPicture.asset("assets/icons/signup.svg"),
                SizedBox(height: 10.0),
                InputContainer(
                  child: InputTextField(
                    hintText: "Your email",
                    onChange: (v) {
                      //
                    },
                  ),
                ),
                SizedBox(height: 10.0),
                InputContainer(
                  child: InputPasswordField(
                    hintText: "password",
                    onChange: (v) {
                      //
                    },
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                RoundedButton(
                  backColor: kPrimaryColor,
                  textColor: Colors.white,
                  level: "Registration",
                  onPress: () {
                    //
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? "),
                    GestureDetector(
                      onTap: () {
                        //
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                OrDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialIcon(
                      iconSrc: "assets/icons/facebook.svg",
                      onPress: () {
                        //
                      },
                    ),
                    SocialIcon(
                      iconSrc: "assets/icons/google-plus.svg",
                      onPress: () {
                        //
                      },
                    ),
                    SocialIcon(
                      iconSrc: "assets/icons/twitter.svg",
                      onPress: () {
                        //
                      },
                    )
                  ],
                )
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
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/signup_top.png",
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.25,
            ),
          ),
          mainBody,
        ],
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: kPrimaryColor,
              height: 20.0,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Text(
              "OR",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: kPrimaryColor,
              height: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
