import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:z_login_ui/constants.dart';

class RoundedButton extends StatelessWidget {
  final Color backColor, textColor;
  final String level;
  final Function onPress;

  RoundedButton({this.backColor, this.textColor, this.level, this.onPress});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      // ignore: deprecated_member_use
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        onPressed: onPress,
        color: backColor,
        child: Text(
          level,
          style: TextStyle(fontSize: 18.0, color: textColor),
        ),
      ),
    );
  }
}

class InputPasswordField extends StatelessWidget {
  final String hintText;
  final Function onChange;

  InputPasswordField({this.hintText, this.onChange});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          color: kPrimaryColor,
        ),
        suffixIcon: Icon(
          Icons.visibility,
          color: kPrimaryColor,
        ),
        hintText: hintText,
        border: InputBorder.none,
      ),
      onChanged: onChange,
    );
  }
}

class InputTextField extends StatelessWidget {
  final String hintText;
  final Function onChange;

  InputTextField({this.hintText, this.onChange});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.person,
          color: kPrimaryColor,
        ),
        hintText: hintText,
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.emailAddress,
      onChanged: onChange,
    );
  }
}

class InputContainer extends StatelessWidget {
  final Widget child;

  InputContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: child,
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function onPress;
  const SocialIcon({
    Key key,
    this.iconSrc,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 20.0,
          width: 20.0,
        ),
      ),
    );
  }
}
