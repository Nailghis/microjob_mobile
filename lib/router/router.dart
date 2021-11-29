import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:forsat_app/presentation/auth/account_page.dart';
import 'package:forsat_app/presentation/auth/sign_in_page.dart';
import 'package:forsat_app/presentation/auth/sign_up_page.dart';
import 'package:forsat_app/presentation/home/home_page.dart';
import 'package:forsat_app/presentation/not_found/not_found_page.dart';
import 'package:forsat_app/presentation/opportunities/opportunities_page.dart';
import 'package:forsat_app/router/route_constants.dart';

class MyRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case opportunitiesRoute:
        return MaterialPageRoute(builder: (_) => OpportunitiesPage());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case signInRoute:
        return MaterialPageRoute(builder: (_) => SignInPage());
      case signUpRoute:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case accountPageRoute:
        return MaterialPageRoute(builder: (_) => AccountPage());
      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
    }
  }
}
