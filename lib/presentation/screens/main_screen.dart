import 'package:app_driver/presentation/screens/order_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrderListScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
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
