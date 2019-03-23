import 'dart:async';
import 'package:app_driver/main.dart';
import 'package:app_driver/presentation/screens/main_screen.dart';
import 'package:app_driver/presentation/styles/edges.dart';
import 'package:app_driver/presentation/styles/fonts.dart';
import 'package:flutter/material.dart';


class AuthScreen extends StatelessWidget {

  final AuthViewModel viewModel = AuthViewModel();
  final NavigatorBase navigator;

  AuthScreen(this.navigator);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Авторизация"),
        ),
        body:  ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: Edges.BaseLowerHalf),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(Edges.Base),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Войдите, чтобы видеть свои заказы и пассажиров",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: FontSizes.High
                          ),
                        ),
                        SizedBox(
                            height: Edges.Quarter
                        ),
                        Text(
                          "Используйте эл. почту и пароль, которые указывали при регистрации на сайте или в приложениях",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: FontSizes.Small
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(Edges.Base),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        createTextField(
                            label: "Логин",
                            withPadding: false,
                            autoFocus: true
                        ),
                        createTextField(
                            label: "Пароль",
                            withPadding: false,
                            autoFocus: true
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: Edges.BaseGraterHalf,
                  bottom: Edges.BaseGraterHalf,
                  left: Edges.Base,
                  right: Edges.Base
              ),
              child: MaterialButton(
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Войти'.toUpperCase(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  padding: EdgeInsets.all(16),
                  onPressed:  () {
                    navigator.showMainScreen(context);
                  },
                  color: Colors.black87,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  textColor: Colors.white
              ),
            )

          ],
        )
    );
  }

  Padding createTextField({String label, helper: "", withPadding: true, type: TextInputType.text, maxLength: 0, autoFocus: false}) => Padding(
    padding: withPadding
        ? EdgeInsets.only(top: Edges.BaseLowerHalf)
        : EdgeInsets.only(top: Edges.Zero),
    child: TextField(
        textCapitalization: TextCapitalization.words,
        autofocus: autoFocus,
        maxLength: maxLength > 0
            ? maxLength
            : null,
        style: TextStyle(
            fontSize: 16,
            color: Colors.black
        ),
        decoration: InputDecoration(
            labelText: label,
            helperText: helper
        ),
        keyboardType: type,
        cursorWidth: 1,
        cursorColor: Colors.black
    ),
  );
}



class AuthViewModel {

  var _stateController = StreamController<AuthState>();
  Stream<AuthState> get state => _stateController.stream;

  void loadSomething() {

  }

  void dispose() {
    _stateController.close();
  }
}


class AuthState {

}