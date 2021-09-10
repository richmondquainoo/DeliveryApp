import 'package:cliq_order_get/Components/ClipPathComponent.dart';
import 'package:cliq_order_get/Components/DoubleCardComponent.dart';
import 'package:cliq_order_get/Components/HorizontalTextComponent.dart';
import 'package:cliq_order_get/Components/HorizontalTwoTextComponent.dart';
import 'package:cliq_order_get/Components/IconAndTextPillComponent.dart';
import 'package:cliq_order_get/Components/StackCardComponent.dart';
import 'package:cliq_order_get/ConstantColors.dart';
import 'package:cliq_order_get/Views/AccountScreen.dart';
import 'package:cliq_order_get/Views/CheckOutScreen.dart';
import 'package:cliq_order_get/Views/SelectedItem.dart';
//import 'package:cliq_order_get/Views/SelectedProductComponent.dart';
import 'package:cliq_order_get/Views/SelectedProductScreen.dart';
import 'package:cliq_order_get/Views/TrackingOrderScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

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
              ClipPathComponent(
                label2: "North-Legon",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      HorizontalTextComponent(
                        label: 'All',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      HorizontalTextComponent(
                        label: 'Food',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      HorizontalTextComponent(
                        label: 'Rentals',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      HorizontalTextComponent(
                        label: 'Books',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      HorizontalTextComponent(
                        label: 'Fashion',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      HorizontalTextComponent(
                        label: 'Electronics',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      HorizontalTextComponent(
                        label: 'Furniture',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      HorizontalTextComponent(
                        label: 'Arts & Sports',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      HorizontalTextComponent(
                        label: 'Health',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: HorizontalTwoTextComponent(
                  leftLabel: 'Products',
                  rightLabel: 'View all',
                  userColor: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: DoubleCardComponent(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SelectedItem(),
                              ),
                            );
                          },
                          inputImage: 'assets/images/pizza.jpg',
                          stackCardComponent: StackCardComponent(
                            label1: 'Special Pizza',
                            label2: 'Locally made tasty pizza',
                            iconAndTextPillComponent1:
                                IconAndTextPillComponent(
                              label: '4.7',
                              userIcon: Icons.star,
                            ),
                            iconAndTextPillComponent2:
                                IconAndTextPillComponent(
                              label: '20-30 mins',
                              userIcon: Icons.access_time_rounded,
                            ),
                            iconAndTextPillComponent3:
                                IconAndTextPillComponent(
                              label: 'Free',
                              userIcon: Icons.delivery_dining,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: DoubleCardComponent(
                          inputImage: 'assets/images/pizza.jpg',
                          stackCardComponent: StackCardComponent(
                            label1: 'Special Pizza',
                            label2: 'Locally made tasty pizza',
                            iconAndTextPillComponent1:
                                IconAndTextPillComponent(
                              label: '4.7',
                              userIcon: Icons.star,
                            ),
                            iconAndTextPillComponent2:
                                IconAndTextPillComponent(
                              label: '20-30 mins',
                              userIcon: Icons.access_time_rounded,
                            ),
                            iconAndTextPillComponent3:
                                IconAndTextPillComponent(
                              label: 'Free',
                              userIcon: Icons.delivery_dining,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: DoubleCardComponent(
                          inputImage: 'assets/images/pizza.jpg',
                          stackCardComponent: StackCardComponent(
                            label1: 'Special Pizza',
                            label2: 'Locally made tasty pizza',
                            iconAndTextPillComponent1:
                                IconAndTextPillComponent(
                              label: '4.7',
                              userIcon: Icons.star,
                            ),
                            iconAndTextPillComponent2:
                                IconAndTextPillComponent(
                              label: '20-30 mins',
                              userIcon: Icons.access_time_rounded,
                            ),
                            iconAndTextPillComponent3:
                                IconAndTextPillComponent(
                              label: 'Free',
                              userIcon: Icons.delivery_dining,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: HorizontalTwoTextComponent(
                  userColor: Colors.black,
                  leftLabel: 'Services',
                  rightLabel: 'View all',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: DoubleCardComponent(
                          inputImage: 'assets/images/pizza.jpg',
                          stackCardComponent: StackCardComponent(
                            label1: 'Special Pizza',
                            label2: 'Locally made tasty pizza',
                            iconAndTextPillComponent1:
                                IconAndTextPillComponent(
                              label: '4.7',
                              userIcon: Icons.star,
                            ),
                            iconAndTextPillComponent2:
                                IconAndTextPillComponent(
                              label: '20-30 mins',
                              userIcon: Icons.access_time_rounded,
                            ),
                            iconAndTextPillComponent3:
                                IconAndTextPillComponent(
                              label: 'Free',
                              userIcon: Icons.delivery_dining,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: DoubleCardComponent(
                          inputImage: 'assets/images/pizza.jpg',
                          stackCardComponent: StackCardComponent(
                            label1: 'Special Pizza',
                            label2: 'Locally made tasty pizza',
                            iconAndTextPillComponent1:
                                IconAndTextPillComponent(
                              label: '4.7',
                              userIcon: Icons.star,
                            ),
                            iconAndTextPillComponent2:
                                IconAndTextPillComponent(
                              label: '20-30 mins',
                              userIcon: Icons.access_time_rounded,
                            ),
                            iconAndTextPillComponent3:
                                IconAndTextPillComponent(
                              label: 'Free',
                              userIcon: Icons.delivery_dining,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: DoubleCardComponent(
                          inputImage: 'assets/images/pizza.jpg',
                          stackCardComponent: StackCardComponent(
                            label1: 'Special Pizza',
                            label2: 'Locally made tasty pizza',
                            iconAndTextPillComponent1:
                                IconAndTextPillComponent(
                              label: '4.7',
                              userIcon: Icons.star,
                            ),
                            iconAndTextPillComponent2:
                                IconAndTextPillComponent(
                              label: '20-30 mins',
                              userIcon: Icons.access_time_rounded,
                            ),
                            iconAndTextPillComponent3:
                                IconAndTextPillComponent(
                              label: 'Free',
                              userIcon: Icons.delivery_dining,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: HorizontalTwoTextComponent(
                  userColor: Colors.black,
                  leftLabel: 'Company',
                  rightLabel: 'View all',
                ),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: DoubleCardComponent(
                          inputImage: 'assets/images/pizza.jpg',
                          stackCardComponent: StackCardComponent(
                            label1: 'Special Pizza',
                            label2: 'Locally made tasty pizza',
                            iconAndTextPillComponent1:
                                IconAndTextPillComponent(
                              label: '4.7',
                              userIcon: Icons.star,
                            ),
                            iconAndTextPillComponent2:
                                IconAndTextPillComponent(
                              label: '20-30 mins',
                              userIcon: Icons.access_time_rounded,
                            ),
                            iconAndTextPillComponent3:
                                IconAndTextPillComponent(
                              label: 'Free',
                              userIcon: Icons.delivery_dining,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: DoubleCardComponent(
                          inputImage: 'assets/images/pizza.jpg',
                          stackCardComponent: StackCardComponent(
                            label1: 'Special Pizza',
                            label2: 'Locally made tasty pizza',
                            iconAndTextPillComponent1:
                                IconAndTextPillComponent(
                              label: '4.7',
                              userIcon: Icons.star,
                            ),
                            iconAndTextPillComponent2:
                                IconAndTextPillComponent(
                              label: '20-30 mins',
                              userIcon: Icons.access_time_rounded,
                            ),
                            iconAndTextPillComponent3:
                                IconAndTextPillComponent(
                              label: 'Free',
                              userIcon: Icons.delivery_dining,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: DoubleCardComponent(
                          inputImage: 'assets/images/pizza.jpg',
                          stackCardComponent: StackCardComponent(
                            label1: 'Special Pizza',
                            label2: 'Locally made tasty pizza',
                            iconAndTextPillComponent1:
                                IconAndTextPillComponent(
                              label: '4.7',
                              userIcon: Icons.star,
                            ),
                            iconAndTextPillComponent2:
                                IconAndTextPillComponent(
                              label: '20-30 mins',
                              userIcon: Icons.access_time_rounded,
                            ),
                            iconAndTextPillComponent3:
                                IconAndTextPillComponent(
                              label: 'Free',
                              userIcon: Icons.delivery_dining,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
