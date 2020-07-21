import 'package:blood_collector/UI/pages/authentication/auth_view.dart';
import 'package:blood_collector/UI/pages/authentication/signup_view.dart';
import 'package:blood_collector/UI/pages/rootPages/map_view.dart';
import 'package:blood_collector/shared/appConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:blood_collector/UI/widgets/home_widget.dart';

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
      // case AppConstants.USER_STATE:
      //   return MaterialPageRoute(builder: (_) => UserDisabledStateView());
      case AppConstants.ADD_POST:
        return MaterialPageRoute(builder: (_) => HomeWidgetView());
      case AppConstants.MAP_VIEW:
        return MaterialPageRoute(builder: (_) => MapView());
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
