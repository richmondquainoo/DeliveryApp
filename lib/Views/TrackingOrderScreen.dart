import 'package:cliq_order_get/Components/OrderedItemComponent.dart';
import 'package:cliq_order_get/Components/TitleBarComponent.dart';
import 'package:cliq_order_get/Views/OrderDetailsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cliq_order_get/ConstantColors.dart';
import 'package:cliq_order_get/Components/GenericCardComponent.dart';

import 'AccountScreen.dart';
import 'CheckOutScreen.dart';
import 'HomeScreen.dart';

class TrackingOrderScreen extends StatefulWidget {
  @override
  _TrackingOrderScreenState createState() => _TrackingOrderScreenState();
}

class _TrackingOrderScreenState extends State<TrackingOrderScreen> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor2,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 15,
        selectedIconTheme: IconThemeData(color: kPrimaryColor1, size: 20),
        selectedItemColor: kPrimaryColor1,
        elevation: 0,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
            ),
            label: 'Home',
            backgroundColor: kPrimaryColor1,
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckOutScreen(),
                    ));
              },
            ),
            label: 'Cart',
            backgroundColor: kPrimaryColor1,
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.delivery_dining),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TrackingOrderScreen(),
                    ));
              },
            ),
            label: 'Tracking',
            backgroundColor: kPrimaryColor1,
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.more_vert_outlined),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountScreen(),
                    ));
              },
            ),
            label: 'More',
            backgroundColor: kPrimaryColor1,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      // backgroundColor: kPrimaryLightColor,
      // bottomNavigationBar: ClipPath(
      //   clipper: CustomClipPath(),
      //   child: Container(
      //     height: 120,
      //     color: Colors.white,
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Title bar
                TitleBarComponent(
                  title: 'My Order',
                  titleColor: kPrimaryColor1,
                  left: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.menu_rounded,
                      size: 25,
                      color: kPrimaryColor1,
                    ),
                  ),
                  right: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.card_giftcard_outlined,
                      size: 25,
                      color: kPrimaryColor1,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1.0,
                ),
                SizedBox(
                  height: 10,
                ),
                //Statistics Card
                GenericCardComponent(
                  borderRadius: 10,
                  // backgroundColor: kPrimaryTextColor,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Track My Order(s)',
                          style: GoogleFonts.lato(
                            color: kPrimaryColor1,
                            fontWeight: FontWeight.bold,
                            // decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(
                          child: Divider(
                            thickness: 1.0,
                          ),
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Container(
                            child: Image.asset(
                              'assets/images/location.png',
                              height: 120,
                            ),
                          ),
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '5',
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'ORDERS',
                                    style: GoogleFonts.lato(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '3',
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'PENDING',
                                    style: GoogleFonts.lato(
                                      color: Colors.orangeAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '1',
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'DELIVERED',
                                    style: GoogleFonts.lato(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '1',
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'CANCELLED',
                                    style: GoogleFonts.lato(
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    'List of Orders - 5',
                    style: GoogleFonts.lato(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w300,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailsScreen(),
                        ));
                  },
                  child: OrderedItemComponent(
                    image: 'assets/images/shirt1.jpg',
                    itemName: 'Wine Shirt',
                    quantity: 5,
                    price: 19.99,
                    orderID: "100-1",
                    status: 'Ordered',
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                OrderedItemComponent(
                  image: 'assets/images/shirt1.jpg',
                  itemName: 'Wine Shirt',
                  quantity: 5,
                  price: 19.99,
                  orderID: "100-1",
                  status: 'Pending',
                ),
                SizedBox(
                  height: 7,
                ),
                OrderedItemComponent(
                  image: 'assets/images/shirt1.jpg',
                  itemName: 'Wine Shirt',
                  quantity: 5,
                  price: 19.99,
                  orderID: "100-1",
                  status: 'Cancelled',
                ),
                SizedBox(
                  height: 7,
                ),
                OrderedItemComponent(
                  image: 'assets/images/shirt1.jpg',
                  itemName: 'Wine Shirt',
                  quantity: 5,
                  price: 19.99,
                  orderID: "100-1",
                  status: 'Delivered',
                ),
                SizedBox(
                  height: 7,
                ),
                OrderedItemComponent(
                  image: 'assets/images/shirt1.jpg',
                  itemName: 'Wine Shirt',
                  quantity: 5,
                  price: 19.99,
                  orderID: "100-1",
                  status: 'Ordered',
                ),
                SizedBox(
                  height: 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
