import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class OrderDetailsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OrderDetailsState();
  }
}


class OrderDetailsState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Заказ"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
