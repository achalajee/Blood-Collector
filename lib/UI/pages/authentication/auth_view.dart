import 'package:blood_collector/shared/appConstant.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

Widget button(String label, Function onTap) {
  return Material(
    color: Colors.red.withOpacity(0.9),
    borderRadius: BorderRadius.circular(30.0),
    
    child: InkWell(
      onTap: onTap,
      splashColor: Colors.white24,
      highlightColor: Colors.white10,
      child: Container(
        width: 268.0,
        padding: EdgeInsets.symmetric(vertical: 13.0),
        child: Center(
          child: Text(
            label,
            style: TextStyle(fontSize: 18.0, fontFamily: "Roboto"),
          ),
        ),
      ),
    ),
  );
}

class _AuthPageState extends State<AuthPage> {
  void _buildNavigateSignInPage() {
    Navigator.pushReplacementNamed(context, AppConstants.SIGN_IN);
  }

  void _buildNavigateSignUpPage() {
    Navigator.pushReplacementNamed(context, AppConstants.SIGN_UP);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/backgroundImage.jpg"),
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstATop),
            fit: BoxFit.cover,
          )), //box decoration - add image to background
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  width: 290.0,
                  height: 290.0,
                  child: Center(
                    child: Image.asset(
                      "assets/logo.png",
                    ),
                  ),
                ), // container - circle & center text
                SizedBox(
                  height: 125.0,
                ),
                new Column(children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Continue with: ',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      button("Sign In", () {
                        _buildNavigateSignInPage();
                      }),
                      SizedBox(
                        height: 25.0,
                      ),
                      button("Create an account", () {
                        _buildNavigateSignUpPage();
                      }),
                    ],
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
