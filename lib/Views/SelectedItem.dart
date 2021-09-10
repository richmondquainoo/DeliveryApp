import 'package:cliq_order_get/Components/ClipPathComponent.dart';
import 'package:cliq_order_get/Components/DoubleCardComponent.dart';
import 'package:cliq_order_get/Components/FlavorsComponent.dart';
import 'package:cliq_order_get/Components/HorizontalTextComponent.dart';
import 'package:cliq_order_get/Components/HorizontalTwoTextComponent.dart';
import 'package:cliq_order_get/Components/IconAndTextPillComponent.dart';
import 'package:cliq_order_get/Components/StackCardComponent.dart';
import 'package:cliq_order_get/Components/TextPillComponent.dart';
import 'package:cliq_order_get/ConstantColors.dart';
import 'package:cliq_order_get/Views/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kPrimaryColor2,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Align(
                      child: Container(
                        child: Column(
                          children: [
                            ClipPath(
                              clipper: ClipPathClass(),
                              child: Container(
                                height: 300,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/pizza.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_outlined,
                              size: 19,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                              );
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              size: 19,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Align(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 140,
                        ),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: StackCardComponent(
                              label1: 'Special Pizza',
                              label2: 'Locally made cheezy pizza',
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HorizontalTextComponent(
                        label: 'Flavors',
                        userColor: kPrimaryColor1,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: FlavorsComponent(
                    label: 'Pepperoni Pizza',
                    textPillComponent: TextPillComponent(label: r'$15.00'),
                  ),
                ),
                Divider(
                  thickness: 0.4,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: FlavorsComponent(
                    label: 'Pepperoni Pizza',
                    textPillComponent: TextPillComponent(label: r'$15.00'),
                  ),
                ),
                Divider(
                  thickness: 0.4,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: FlavorsComponent(
                    label: 'Pepperoni Pizza',
                    textPillComponent: TextPillComponent(label: r'$15.00'),
                  ),
                ),
                Divider(
                  thickness: 0.4,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:14.0),
                  child: FlavorsComponent(
                    label: 'Pepperoni Pizza',
                    textPillComponent: TextPillComponent(label: r'$15.00'),
                  ),
                ),
                Divider(
                  thickness: 0.4,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: FlavorsComponent(
                    label: 'Pepperoni Pizza',
                    textPillComponent: TextPillComponent(label: r'$15.00'),
                  ),
                ),
                Divider(
                  thickness: 0.4,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
