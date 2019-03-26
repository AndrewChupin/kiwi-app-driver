import 'package:app_driver/core/presentation/stateful.dart';
import 'package:app_driver/core/presentation/view_model.dart';
import 'package:app_driver/presentation/screens/auth/auth_navigator.dart';


class AuthViewState with ViewState {
  int counter;

  AuthViewState({
      this.counter = 0
  });

  @override
  String toString() {
    return 'AuthViewState{counter: $counter}';
  }
}


class AuthViewModel extends StatefulViewModel<AuthViewState> {

  @override
  AuthViewState get initialState => AuthViewState(counter: 23);

  final AuthRouter _router;

  AuthViewModel(this._router);

  void signIn(String login, String password) {
    print("SignIn $login $password");
    if (login == "qwerty" && password == "123") {
      _router.navigateToMain();
    }
  }
}