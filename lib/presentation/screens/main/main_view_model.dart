import 'package:app_driver/core/presentation/stateful.dart';
import 'package:app_driver/core/presentation/view_model.dart';
import 'package:app_driver/presentation/screens/main/main_router.dart';


class MainViewState with ViewState {}


class MainViewModel extends StatefulViewModel<MainViewState> {

  MainViewModel(MainRouter router) : super(router);

  @override
  MainViewState get initialState => MainViewState();
}
