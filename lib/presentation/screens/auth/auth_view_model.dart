import 'package:app_driver/presentation/common/view_model.dart';


class AuthViewState with ViewState {
  final int counter;
  AuthViewState({this.counter = 0});

  @override
  String toString() {
    return 'AuthViewState{counter: $counter}';
  }
}


class AuthViewModel extends StatefulViewModel<AuthViewState> {

  @override
  AuthViewState get initialState => AuthViewState(counter: 23);

  void loadSomething() {
    print("loadSomething");
    updateState(() => AuthViewState(

    ));
  }
}