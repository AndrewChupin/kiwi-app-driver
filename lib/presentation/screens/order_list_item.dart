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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(Edges.Base),
            child: Column(
              children: <Widget>[
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
                                  fontSize: FontSizes.High,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              order.from.address,
                              style: TextStyle(
                                  fontSize: FontSizes.Normal,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                            SizedBox(
                                height: Edges.BaseLowerHalf
                            ),
                            Text(
                              order.to.city,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: FontSizes.High,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              order.to.address,
                              style: TextStyle(
                                  fontSize: FontSizes.Normal,
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
                Text(
                  "${order.car.color} ${order.car.brand} ${order.car.model}  ${order.car.number}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: FontSizes.High,
                      fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(
                  height: Edges.Base,
                ),
                Text(
                  "${order.data}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: FontSizes.High,
                      fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: Edges.Base,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.drive_eta, color: Colors.black45),
                    Icon(Icons.directions_run, color: Colors.black45),
                    Icon(Icons.directions, color: Colors.black45),
                    Icon(Icons.more_horiz, color: Colors.black45)
                  ],
                )
              ],
            )
          ),
        )
    );
  }
}

