import 'package:app_driver/core/presentation/stateful_widget.dart';
import 'package:app_driver/presentation/screens/details/order_details_screen.dart';
import 'package:app_driver/presentation/screens/main/main_router.dart';
import 'package:app_driver/presentation/screens/main/main_view_model.dart';
import 'package:app_driver/presentation/screens/order_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class MainScreen extends BaseStatefulWidget<MainState, MainViewModel> {

  MainState get state => MainState(
      MainViewModel(
          MainRouterDefault()
      )
  );
}


class MainState extends BaseStateWithProps<MainViewModel, MainViewState>  {

  MainState(viewModel) : super(viewModel);
  var currentIndex = 0;

  @override
  Widget render(BuildContext context, MainViewState state) {
    Widget bodyPage;

    switch (currentIndex) {
      case 0:
        bodyPage = OrderDetailsScreen();
        break;
      case 1:
        bodyPage = OrderListScreen();
        break;
      default:
        bodyPage = OrderListScreen();
        break;
    }

    return Scaffold(
      body: bodyPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: Colors.indigoAccent,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.drive_eta),
            title: new Text('В работе'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.access_time),
            title: new Text('Заказы'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              title: Text('Другое')
          )
        ],
      ),
    );
  }
}
