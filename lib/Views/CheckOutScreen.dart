import 'package:cliq_order_get/Components/BottomSheetComponent.dart';
import 'package:cliq_order_get/Components/CartComponent.dart';
import 'package:cliq_order_get/Components/CircularTextComponent.dart';
import 'package:cliq_order_get/Components/ClipPathComponent.dart';
import 'package:cliq_order_get/Components/IconAndTextPillComponent.dart';
import 'package:cliq_order_get/Components/TopBarComponent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';
import 'AccountScreen.dart';
import 'HomeScreen.dart';
import 'TrackingOrderScreen.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                    color: kPrimaryColor1,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 19,
                          horizontal: 19,
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            child: Text(
                              'Your Cart',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CartComponent(
                  labelName: 'Tasty Soup',
                  labelPrice: r'12.99',
                  thumbnailImage: 'assets/images/watch2.jpg',
                  iconAndTextPillComponentOne: IconAndTextPillComponent(
                    label: '4.6',
                    userIcon: Icons.access_time,
                  ),
                  iconAndTextPillComponentTwo: IconAndTextPillComponent(
                    userIcon: Icons.delivery_dining,
                    label: '20 -30mins',
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black26,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CartComponent(
                  labelName: 'Tasty Soup',
                  labelPrice: r'12.99',
                  thumbnailImage: 'assets/images/watch2.jpg',
                  iconAndTextPillComponentOne: IconAndTextPillComponent(
                    label: '4.7',
                    userIcon: Icons.access_time,
                  ),
                  iconAndTextPillComponentTwo: IconAndTextPillComponent(
                    userIcon: Icons.delivery_dining,
                    label: '20-30mins',
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Text(
                        'Clear Cart',
                        style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: kPrimaryColor1),
                      ),
                    ),
                  ],
                ),
              ),
              // BottomSheetComponent(height: 225, backgroundColor: kPrimaryColor1,),
            ],
          ),
        ),
      ),
    );
  }
}
