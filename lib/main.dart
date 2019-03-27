import 'package:app_driver/presentation/screens/auth/auth_screen.dart';
import 'package:app_driver/presentation/screens/main/main_screen.dart';
import 'package:flutter/material.dart';




void main() => runApp(MyApp());

const MaterialColor grey1 = MaterialColor(
  _greyPrimaryValue,
  <int, Color>{
    50: Color(0xFFFAFAFA),
    100: Color(0xFFF5F5F5),
    200: Color(0xFFEEEEEE),
    300: Color(0xFFE0E0E0),
    350: Color(0xFFD6D6D6), // only for raised button while pressed in light theme
    400: Color(0xFFBDBDBD),
    500: Color(_greyPrimaryValue),
    600: Color(0xFF757575),
    700: Color(0xFF616161),
    800: Color(0xFF424242),
    850: Color(0xFF303030), // only for background color in dark theme
    900: Color(0xFF212121),
  },
);

const int _greyPrimaryValue = 0xFF212121;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    var navigator = NavigatorBase(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: grey1,
        fontFamily: "Roboto",
      ),
      navigatorKey: navigatorKey,
      home: AuthScreen()
    );
  }
}

class NavigatorBase {

  BuildContext _context;

  NavigatorBase(this._context);

  void showMainScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => MainScreen()),
    );
  }
}
