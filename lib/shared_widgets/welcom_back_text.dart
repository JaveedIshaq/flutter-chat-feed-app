import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat_feed_app/config/ui_helpers.dart';

class WelcomBackText extends StatelessWidget {
  const WelcomBackText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome Back",
      style: headingStyle,
    );
  }
}
