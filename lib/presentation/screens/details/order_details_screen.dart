import 'package:app_driver/core/presentation/navigator.dart';
import 'package:app_driver/core/presentation/stateful.dart';
import 'package:app_driver/core/presentation/stateful_widget.dart';
import 'package:app_driver/core/presentation/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class OrderDetailsScreen extends BaseStatefulWidget<OrderDetailsState, OrderDetailsViewModel> {

  @override
  OrderDetailsState get state => OrderDetailsState(
      OrderDetailsViewModel(
          OrderDetailsRouterDefault()
      )
  );
}


class OrderDetailsState extends BaseStateWithProps<OrderDetailsViewModel, OrderDetailsViewState> {
  OrderDetailsState(OrderDetailsViewModel viewModel) : super(viewModel);

  @override
  Widget render(BuildContext context, OrderDetailsViewState state) {
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


mixin OrderDetailsRouter on BaseRouter {}
class OrderDetailsRouterDefault extends BaseRouter with OrderDetailsRouter {}


class OrderDetailsViewState with ViewState {}
class OrderDetailsViewModel extends StatefulViewModel<OrderDetailsViewState> {
  OrderDetailsViewModel(OrderDetailsRouter router) : super(router);

  @override
  OrderDetailsViewState get initialState => OrderDetailsViewState();
}
