import 'package:app_driver/core/presentation/navigator.dart';
import 'package:app_driver/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';


mixin AuthRouter on BaseRouter {
  void navigateToMain();
}


class AuthNavigator extends BaseRouter with AuthRouter {

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

