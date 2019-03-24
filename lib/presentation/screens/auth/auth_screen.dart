import 'package:app_driver/presentation/common/view_model.dart';
import 'package:app_driver/presentation/common/widget.dart';
import 'package:app_driver/presentation/screens/auth/auth_view_model.dart';
import 'package:app_driver/presentation/screens/main_screen.dart';
import 'package:app_driver/presentation/styles/edges.dart';
import 'package:app_driver/presentation/styles/fonts.dart';
import 'package:flutter/material.dart';

class AuthScreen extends BaseWidget<AuthViewModel> {

  @override
  AuthScreenState get state => AuthScreenState(
      AuthViewModel()
  );
}


class AuthScreenState extends BaseState<AuthScreen, AuthViewModel, AuthViewState> {
  AuthScreenState(AuthViewModel viewModel) : super(viewModel);

  final loginController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget render(BuildContext context, AuthViewState state) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Авторизация"),
        ),
        body: content(context, state)
    );
  }

  ListView content(BuildContext context, AuthViewState state) {
    return ListView(
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
                        key: ObjectKey("login"),
                        label: "Логин",
                        controller: loginController,
                        withPadding: false
                    ),
                    createTextField(
                        key: ObjectKey("pass"),
                        label: "Пароль",
                        controller: passController,
                        withPadding: false
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
                viewModel.signIn(
                    loginController.text,
                    passController.text,
                    () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    )
                );
              },
              color: Colors.black87,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
              ),
              textColor: Colors.white
          ),
        )
      ],
    );
  }

  Padding createTextField({
    Key key,
    String label,
    TextEditingController controller,
    helper: "",
    withPadding: true,
    type: TextInputType.text,
    maxLength: 0
  }) => Padding(
    padding: withPadding
        ? EdgeInsets.only(top: Edges.BaseLowerHalf)
        : EdgeInsets.only(top: Edges.Zero),
    child: TextField(
        key: key,
        controller: controller,
        textCapitalization: TextCapitalization.words,
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

  @override
  void dispose() {
    loginController.dispose();
    passController.dispose();
    super.dispose();
  }
}



