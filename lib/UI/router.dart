import 'package:blood_collector/UI/pages/authentication/auth_view.dart';
import 'package:blood_collector/UI/pages/authentication/signup_view.dart';
import 'package:blood_collector/shared/appConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:blood_collector/UI/widgets/homeWidget.dart';

import 'package:blood_collector/UI/pages/authentication/signin_view.dart';
import 'package:blood_collector/UI/pages/splash_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppConstants.SPLASH:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case AppConstants.AUTH:
        return MaterialPageRoute(builder: ((_) => AuthPage()));
      case AppConstants.SIGN_UP:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case AppConstants.SIGN_IN:
        return MaterialPageRoute(builder: (_) => SignInPage());
      case AppConstants.HOME:
        return MaterialPageRoute(builder: (_) => HomePageView());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defines for ${settings.name}'),
            ),
          );
        });
    }
  }
}