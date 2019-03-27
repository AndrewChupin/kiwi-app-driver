import 'package:app_driver/data/order/order.dart';
import 'package:app_driver/presentation/styles/Edges.dart';
import 'package:app_driver/presentation/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StatusesGradient {

  static LinearGradient active = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0, 0.5],
    colors: [
      Color(0xFFFFE600),
      Color(0xFFFECB2F),
    ],
  );

  static LinearGradient canceled = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0, 0.5],
    colors: [
      Color(0xFFB6BEC7),
      Color(0xFF6C7C8C),
    ],
  );

  static LinearGradient completed = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0, 0.5],
    colors: [
      Color(0xFF26A65B),
      Color(0xFF009688),
    ],
  );

}


class OrderListItem extends StatelessWidget {

  final Order order;

  OrderListItem(this.order);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1,
        margin: EdgeInsets.only(
            top: 4,
            bottom: 4,
            left: 16,
            right: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            // Footer
            Container(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 12,
                top: 12
              ),
              decoration: BoxDecoration(
                  gradient: StatusesGradient.active,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)
                  )
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                        "# 003456",
                        style: TextStyle(
                          color: Color(0xFF373F47)
                        ),
                      )
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "28.03.2019",
                    style: TextStyle(
                        color: Color(0xFF373F47)
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "10:00 (GMT+0)",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF)
                    ),
                  )
                ],
              ),
            ),


            // Content
            Container(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 16,
                  top: 16
              ),
              child: Row(
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
                        SvgPicture.asset("assets/images/ic_air.svg"),
                        Container(
                            margin: EdgeInsets.only(
                              top: 8,
                              bottom: 8,
                            ),
                            width: 1,
                            height: 32,
                            color: Color(0xFFB6BEC7)
                        ),
                        SvgPicture.asset("assets/images/ic_city.svg"),
                      ],
                    ),
                  ),

                  //
                  SizedBox(
                    width: 16,
                  ),

                  // Addresses
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Ататюрк Аэропорт Стамбул",
                        style: TextStyle(
                            fontSize: 16,
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
                            fontSize: 16,
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
              )
            ),


            // Bottom
            Container(
              margin: EdgeInsets.only(
                left: 16,
                right: 16
              ),
              color: Color(0xFFB6BEC7),
              height: 1,
            ),

            Container(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 12,
                  top: 12
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                      Icons.drive_eta,
                      color: Color(0xFF373F47),
                      size: 20
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                      "Skoda Octavia / MAI 9211 / Зелёный",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF373F47)
                      )
                  )
                ],
              ),
            )
          ],
        )
    );
  }

  Widget content() => Column(
    children: <Widget>[
      Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.only(
                  left: Edges.BaseLowerQuarter,
                  right: Edges.BaseLowerQuarter,
                  top: Edges.Quarter,
                  bottom: Edges.Quarter
              ),
              child: Text(
                "${order.data}",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomRight: Radius.circular(12)
                  )
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(Edges.BaseLowerHalf),
              child: Column(
                children: <Widget>[
                  Text(
                    "${order.car.color} ${order.car.brand} ${order.car.model}",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: FontSizes.Low,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "${order.car.number}",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: FontSizes.Low,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.end,
              ),
            ),
          ),
          Container(
            child: Padding(
                padding: EdgeInsets.only(
                    top: Edges.Base,
                    left: Edges.BaseLowerQuarter,
                    right: Edges.BaseLowerQuarter,
                    bottom: Edges.Quarter
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                        height: 28
                    ),
                    Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                top: Edges.Quarter,
                                right: Edges.BaseLowerHalf,
                              ),
                              child: SvgPicture.asset("assets/images/ic_route1.svg"),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  order.from.city,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Text(
                                  order.from.address,
                                  style: TextStyle(
                                      color: Color(0xFF4E4E4E),
                                      fontSize: FontSizes.Low,
                                      fontWeight: FontWeight.normal
                                  ),
                                ),
                                SizedBox(
                                    height: Edges.BaseLowerQuarter
                                ),
                                Text(
                                  order.to.city,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Text(
                                  order.to.address,
                                  style: TextStyle(
                                      color: Color(0xFF4E4E4E),
                                      fontSize: FontSizes.Low,
                                      fontWeight: FontWeight.normal
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                    ),
                    SizedBox(
                      height: Edges.Base,
                    ),
                  ],
                )
            ),
          )
        ],
      ),
      Container(
        color: Colors.black12,
        height: 1,
      ),
      Container(
        padding: EdgeInsets.only(
            bottom: Edges.BaseLowerQuarter,
            left: Edges.Base,
            right: Edges.Base,
            top: Edges.BaseLowerQuarter
        ),
        child: footer(),
      ),
    ],
  );

  Row footer() => Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Container(
        width: 24,
        height: 24,
        child: Icon(Icons.drive_eta, color: Colors.white, size: 16),
        decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.all(Radius.circular(12))
        ),

      ),
      SizedBox(width: 12),
      Container(
        width: 24,
        height: 24,
        child: Icon(Icons.directions_run, color: Colors.white, size: 16),
        decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.all(Radius.circular(12))
        ),
      ),
      SizedBox(width: 12),
      Container(
        width: 24,
        height: 24,
        child: Icon(Icons.build, color: Colors.white, size: 16),
        decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.all(Radius.circular(12))
        ),
      ),
      SizedBox(width: 12),
      Container(
        width: 24,
        height: 24,
        child: Icon(Icons.delete, color: Colors.white, size: 16),
        decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.all(Radius.circular(12))
        ),
      ),
    ],
  );
}

/*

                      Text(
                        "${order.car.color} ${order.car.brand} ${order.car.model}",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: FontSizes.Normal,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "${order.car.number}",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: FontSizes.Normal,
                            fontWeight: FontWeight.normal
                        ),
                      ),
 */


/*
Align(
              child:  Container(
                padding: EdgeInsets.only(
                    left: Edges.BaseLowerQuarter,
                    right: Edges.BaseLowerQuarter,
                    top: Edges.Quarter,
                    bottom: Edges.Quarter
                ),
                child: Text(
                  "${order.data}",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12)
                    )
                ),
              ),
              alignment: Alignment.topRight,
            ),
 */