import 'package:app_driver/core/presentation/navigator.dart';
import 'package:app_driver/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';


mixin AuthRouter {
  void navigateToMain();
}


class AuthNavigator extends BaseNavigator with AuthRouter {

  @override
  void navigateToMain() {
    context.onSome((value) =>
        Navigator.push(
            value,
            MaterialPageRoute(builder: (context) => MainScreen())
        )
    );
  }
}
