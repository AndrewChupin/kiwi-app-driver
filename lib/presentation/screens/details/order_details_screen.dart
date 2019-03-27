import 'package:app_driver/core/presentation/navigator.dart';
import 'package:app_driver/core/presentation/stateful.dart';
import 'package:app_driver/core/presentation/stateful_widget.dart';
import 'package:app_driver/core/presentation/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';


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
        child: ListView(
          children: <Widget>[

            // Green Header
            Container(
              color: Color(0xFF2BBB66),
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 24,
                    height: 24,
                    child: Icon(Icons.person, color: Color(0xFF373F47), size: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                  ),

                  SizedBox(
                      width: 16
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Ivanov Ivan",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Ivanov Ivan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Ivanov Ivan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),


            // White Header
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                top: 16,
                bottom: 16,
                left: 20,
                right: 20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                      Icons.drive_eta,
                      color: Color(0xFF373F47),
                      size: 20,
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Economy",
                        style: TextStyle(
                            color: Color(0xFF373F47),
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                          height: 4
                      ),
                      Text(
                        "3 пассажира, 2 багажных места",
                        style: TextStyle(
                            color: Color(0xFF6F7F8F),
                            fontSize: 12
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),


            // White Header
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                top: 16,
                bottom: 16,
                left: 20,
                right: 20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.calendar_today,
                    color: Color(0xFF373F47),
                    size: 20,
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "28.04.2019",
                        style: TextStyle(
                            color: Color(0xFF373F47),
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "10:00 (GMT+0)",
                        style: TextStyle(
                            color: Color(0xFF6F7F8F),
                            fontSize: 12
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

            // Content
            Container(
                color: Color(0xFFF6F7F8),
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Route
                        Container(
                          padding: EdgeInsets.only(
                            top: 4,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    color: Color(0xFFB6BEC7),
                                    borderRadius: BorderRadius.all(Radius.circular(12))
                                ),
                              ),
                              Container(
                                  width: 1,
                                  height: 56,
                                  color: Color(0xFFB6BEC7)
                              ),
                              Container(
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    color: Color(0xFFB6BEC7),
                                    borderRadius: BorderRadius.all(Radius.circular(12))
                                ),
                              ),
                            ],
                          ),
                        ),

                        //
                        SizedBox(
                          width: 24,
                        ),

                        // Addresses
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Ататюрк Аэропорт Стамбул",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF373F47)
                              ),
                            ),
                            SizedBox(
                                height: 4
                            ),
                            Text(
                              "*номер рейса или адрес места отправления*",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF6F7F8F)
                              ),
                            ),
                            SizedBox(
                                height: 24
                            ),
                            Text(
                              "Бейоглу Район Стамбул",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF373F47)
                              ),
                            ),
                            SizedBox(
                                height: 4
                            ),
                            Text(
                              "*номер рейса или адрес места отправления*",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF6F7F8F)
                              ),
                            )
                          ],
                        ),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(height: 24),

                        Container(), // TODO DELETE FROM HERE
                        Container(
                          height: 2,
                          color: Color(0xFF373F47),
                          width: 120,
                        ),

                        SizedBox(height: 8),

                        Text(
                          "32 EUR",
                          style: TextStyle(
                              color: Color(0xFF373F47),
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                          ),
                        ),

                        Text(
                          "+ 5 EUR",
                          style: TextStyle(
                              color: Color(0xFF373F47),
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ],
                )
            ),

            // ADDITIONAL
            Container(
              padding: EdgeInsets.only(
                top: 16,
                bottom: 16,
                left: 20,
                right: 20,
              ),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SvgPicture.asset("assets/images/ic_dops.svg"),
                      SizedBox(width: 16),
                      Text(
                        "Дополнительные услуги",
                        style: TextStyle(
                            color: Color(0xFF373F47),
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 24),
                  Container(
                    padding: EdgeInsets.only(
                        left: 4,
                        right: 4
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                                  "Детское кресло х 1",
                                  style: TextStyle(
                                      color: Color(0xFF6F7F8F),
                                      fontSize: 12
                                  ),
                                )
                            ),
                            SizedBox(height: 4),
                            Text(
                              "28 EUR",
                              style: TextStyle(
                                  color: Color(0xFF6F7F8F),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                                  "Питьевая вода х 1",
                                  style: TextStyle(
                                      color: Color(0xFF6F7F8F),
                                      fontSize: 12
                                  ),
                                )
                            ),
                            SizedBox(height: 8),
                            Text(
                              "5 EUR",
                              style: TextStyle(
                                  color: Color(0xFF6F7F8F),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                                  "SIM-карты х 1",
                                  style: TextStyle(
                                      color: Color(0xFF6F7F8F),
                                      fontSize: 12
                                  ),
                                )
                            ),
                            SizedBox(height: 4),
                            Text(
                              "15 EUR",
                              style: TextStyle(
                                  color: Color(0xFF6F7F8F),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),

                        Container(
                            height: 1,
                            margin: EdgeInsets.only(
                                top: 24,
                                bottom: 24
                            ),
                            color: Color(0xFFB6BEC7)
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                                  "ИТОГО:",
                                  style: TextStyle(
                                      color: Color(0xFF373F47),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12
                                  ),
                                )
                            ),
                            SizedBox(height: 4),
                            Text(
                              "110 EUR",
                              style: TextStyle(
                                  color: Color(0xFF373F47),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),


            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFE4E7EA),
                  border: Border.all(
                    color: Color(0xFFB6BEC7),
                    width: 2
                  )
              ),
              padding: EdgeInsets.only(
                top: 16,
                bottom: 16,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Text(
                            "К оплате картой:",
                            style: TextStyle(
                                color: Color(0xFF373F47),
                                fontWeight: FontWeight.bold
                            ),
                          )
                      ),
                      SizedBox(height: 4),
                      Text(
                        "70 EUR",
                        style: TextStyle(
                            color: Color(0xFF373F47),
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      )
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Text(
                            "В валюте списания:",
                            style: TextStyle(
                                color: Color(0xFF6F7F8F),
                                fontSize: 12
                            ),
                          )
                      ),
                      SizedBox(height: 4),
                      Text(
                        "5 320 RUB",
                        style: TextStyle(
                            color: Color(0xFF6F7F8F),
                            fontSize: 12
                        ),
                      )
                    ],
                  ),


                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF8E8C8),
                  border: Border(
                    left: BorderSide(color: Color(0xFFE1D4B5), width: 2),
                    right: BorderSide(color: Color(0xFFE1D4B5), width: 2),
                    bottom: BorderSide(color: Color(0xFFE1D4B5), width: 2),
                  )
              ),
              padding: EdgeInsets.only(
                top: 16,
                bottom: 16,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Text(
                            "Наличными водителю",
                            style: TextStyle(
                                color: Color(0xFF373F47),
                                fontWeight: FontWeight.bold
                            ),
                          )
                      ),
                      SizedBox(height: 4),
                      Text(
                        "3 040 RUB",
                        style: TextStyle(
                            color: Color(0xFF373F47),
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      )
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Подготовьте сумму в указанной валюте",
                        style: TextStyle(
                            color: Color(0xFF6F7F8F),
                            fontSize: 12
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
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
