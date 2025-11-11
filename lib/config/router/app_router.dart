import 'package:flutter/material.dart';
import 'package:turbo/config/router/router_transitions.dart';
import 'package:turbo/config/router/routs.dart';
import 'package:turbo/features/auth/modules/login/login_view.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routs.login:
        return RouterTransitions.build(const LoginView());
      default:
        return RouterTransitions.build(
          const Scaffold(
            body: Center(
              child: Text('No Route Found'),
            ),
          ),
        );
    }
  }
}
