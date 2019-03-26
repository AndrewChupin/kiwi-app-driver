import 'package:app_driver/data/order/order.dart';
import 'package:app_driver/presentation/styles/Edges.dart';
import 'package:app_driver/presentation/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderListItem extends StatelessWidget {

  final Order order;

  OrderListItem(this.order);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        margin: EdgeInsets.only(
            top: Edges.Quarter,
            bottom: Edges.Quarter
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Column(
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
                            topLeft: Radius.circular(4),
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
                                            fontSize: FontSizes.Normal,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(
                                        order.from.address,
                                        style: TextStyle(
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
                                            fontSize: FontSizes.Normal,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(
                                        order.to.address,
                                        style: TextStyle(
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
        )
    );
  }


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