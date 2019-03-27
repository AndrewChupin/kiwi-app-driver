

import 'dart:async';

import 'package:app_driver/data/order/order.dart';
import 'package:app_driver/presentation/screens/order_list_item.dart';
import 'package:app_driver/presentation/styles/Edges.dart';
import 'package:flutter/material.dart';

class OrderListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OrderListState(OrderListViewModel());
  }
  
}


class OrderListState extends State<OrderListScreen> {

  OrderListViewModel viewModel;

  List<Order> _orders = [];

  OrderListState(this.viewModel);

  @override
  void initState() {
    setState(() {
      _orders = viewModel.loadOrders();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Список заказов"),
      ),
      body: Container(
        color: Color(0xFFECF0F5),
        child: ListView.builder(
            padding: EdgeInsets.only(
                top: Edges.Base,
                bottom: Edges.Base
            ),
            itemCount: _orders.length,
            itemBuilder: (context, index) => OrderListItem(_orders[index])
        ),
      ),
    );
  }
}


class OrderListViewModel {

  var _stateController = StreamController<OrderListViewState>();
  Stream<OrderListViewState> get state => _stateController.stream;

  List<Order> loadOrders() {
    return List.generate(12, (id) {
      return Order(
          id,
          Place(
              "Ижевск",
              "ул. Коммунаров, 319"
          ),
          Place(
              "аэропорт Шерементьево Москва",
              "ул. Карла Макрса, д. 23"
          ),
          Car(
              "Mazda",
              "CX-5",
              "A321B",
              "Красная"
          ),
          [
            Service(
                1,
                "Детское кресло",
                "1"
            ),
            Service(
                2,
                "Кондиционер",
                "2"
            ),
            Service(
                3,
                "Подогрев",
                "3"
            ),
          ],
          "12 декабря в 18:30"
      );
    });
  }

  void dispose() {
    _stateController.close();
  }
}


class OrderListViewState {

}

/*
 new StreamBuilder<OrderListViewState>(
      stream: viewModel.state,
      initialData: OrderListViewState(),
      builder: (BuildContext context, AsyncSnapshot<OrderListViewState> snapshot) {
        return
      },
    );
 */