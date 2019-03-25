import 'package:app_driver/presentation/core/stateful.dart';
import 'package:app_driver/presentation/core/view_model.dart';


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

  void signIn(String login, String password, void onSuccess()) {
    print("SignIn $login $password");
    if (login == "qwerty" && password == "123") {
      onSuccess();
    }

    updateState(() {
      state.counter = 42;
    });
  }
}