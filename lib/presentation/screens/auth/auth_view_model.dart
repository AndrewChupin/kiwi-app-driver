import 'package:app_driver/presentation/common/view_model.dart';
import 'package:app_driver/presentation/common/widget.dart';


class AuthViewState with ViewState {
  int counter;
  ScreenState screenState;
  AuthViewState({
      this.counter = 0,
      this.screenState = ScreenState.data
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
  }
}