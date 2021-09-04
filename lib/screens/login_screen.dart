import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat_feed_app/screens/chat_screen.dart';
import 'package:flutter_firebase_chat_feed_app/shared_widgets/google_signin_button.dart';
import 'package:flutter_firebase_chat_feed_app/shared_widgets/login_background.dart';
import 'package:flutter_firebase_chat_feed_app/shared_widgets/signin_illustration.dart';
import 'package:flutter_firebase_chat_feed_app/shared_widgets/welcom_back_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _error = false;

  /// Defining an asunc funtion to initialize Firebsase FireStore Database

  void initFlutterFire() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        WidgetsBinding.instance!.addPostFrameCallback((_) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatScreen(user: user),
            ),
          );
        });
      }
    } catch (e) {
      /// if Error in initializing make the error true

      setState(() => _error = true);
    }
  }

  @override
  void initState() {
    initFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LoginBackground(
      child: Column(
        children: [
          Spacer(),
          WelcomBackText(),
          SigninIllustration(),
          _error ? Text("Something went wrong") : GoogleSigninButton(),
          Spacer(),
        ],
      ),
    ));
  }
}
