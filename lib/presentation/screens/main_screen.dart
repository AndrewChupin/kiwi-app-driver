import 'package:app_driver/presentation/screens/order_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}


class MainScreenState extends State<MainScreen> {

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget bodyPage;
    switch (currentIndex) {
      case 0:
        bodyPage = OrderListScreen();
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