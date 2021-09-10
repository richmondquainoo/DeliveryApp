import 'package:cliq_order_get/ConstantColors.dart';
import 'package:cliq_order_get/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderedItemComponent extends StatelessWidget {
  final String image;
  final String itemName;
  final int quantity;
  final double price;
  final String orderID;
  final String status;

  OrderedItemComponent(
      {this.image,
      this.itemName,
      this.quantity,
      this.price,
      this.orderID,
      this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 3),
            spreadRadius: 0.7,
            blurRadius: 0.8,
            color: Colors.black12,
          ),
          BoxShadow(
            offset: Offset(-1, -1),
            spreadRadius: 0.5,
            blurRadius: 0.5,
            color: Colors.black12,
          ),
        ],
        color: kBackgroundColor,
      ),
      child: Stack(
        //alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.2, 0.2),
                          spreadRadius: 0.2,
                          blurRadius: 0.1,
                        ),
                      ]),
                ),
                SizedBox(width: 7),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Item name: ',
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          child: Text(
                            itemName,
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Qty: ',
                                style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              child: Text(
                                quantity.toString(),
                                style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          child: Text(
                            "|",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w200),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Text(
                                'Price: ',
                                style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              child: Text(
                                price.toString(),
                                style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Order ID: ',
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          child: Text(
                            orderID,
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Status: ',
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          child: Text(
                            status,
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: (status == 'Ordered')
                                    ? Colors.blueAccent
                                    : (status == 'Pending')
                                        ? Colors.orangeAccent
                                        : (status == 'Delivered')
                                            ? Colors.green
                                            : (status == 'Cancelled')
                                                ? Colors.red
                                                : Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
