import 'package:cliq_order_get/Components/AccountPageInfoComponent.dart';
import 'package:cliq_order_get/Components/ClipPathComponent.dart';
import 'package:cliq_order_get/Components/FlatClipPathComponent.dart';
import 'package:cliq_order_get/Components/MoreCardScreenComponent.dart';
import 'package:cliq_order_get/Components/TopBarComponent.dart';
import 'package:cliq_order_get/Services/UtilityService.dart';
import 'package:cliq_order_get/Views/AccountSettingScreen.dart';
import 'package:cliq_order_get/Views/AppVersion.dart';
import 'package:cliq_order_get/Views/GettingStartedPage.dart';
import 'package:cliq_order_get/Views/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';
import '../Constants.dart';
import 'CheckOutScreen.dart';
import 'SettingScreen.dart';
import 'TrackingOrderScreen.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int _currentIndex = 3;

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
              icon: Icon(Icons.more_vert_outlined),
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
              FlatClipPathComponent(label: 'More', onPressed: () {}),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AccountSettingScreen(),
                        ),
                      );
                    },
                    child: MoreCardScreenComponent(
                      label: 'My Account',
                      icon: Icons.person_outline_outlined,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: MoreCardScreenComponent(
                        label: 'Notification',
                        icon: Icons.notifications_none_outlined,
                        color: Colors.pinkAccent),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SettingScreen(),
                          ));
                    },
                    child: MoreCardScreenComponent(
                        label: 'Settings',
                        icon: Icons.settings,
                        color: Colors.green),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AppVersion(),
                        ),
                      );
                    },
                    child: MoreCardScreenComponent(
                        label: 'App Version',
                        icon: Icons.info_outline,
                        color: Colors.blueGrey),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      new UtilityService().confirmationBox(
                        title: 'Log Out Confirmation',
                        message: 'Are you sure you want to log out?',
                        context: context,
                        onYes: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GettingStarted(),
                            ),
                          );
                        },
                        onNo: () {
                          Navigator.pop(context);
                        },
                      );
                    },
                    child: MoreCardScreenComponent(
                        label: 'Log out',
                        icon: Icons.logout,
                        color: Colors.deepPurpleAccent),
                  ),
                  SizedBox(
                    height: 16,
                  ),

                  // SizedBox(
                  //   height: 12,
                  // ),
                  // AccountPageInfoComponent(
                  //   label: 'Notification',
                  //   userIcon: Icons.notifications,
                  //   onTap: () {},
                  // ),
                  // SizedBox(
                  //   height: 12,
                  // ),
                  // // SizedBox(
                  // //   height: 12,
                  // // ),
                  // // Divider(
                  // //   thickness: 0.28,
                  // //   color: Colors.black,
                  // // ),
                  // // SizedBox(
                  // //   height: 12,
                  // // ),
                  // // // AccountPageInfoComponent(
                  // // //   label: 'Billing and Payments',
                  // // //   userIcon: Icons.payments,
                  // // //   onTap: () {},
                  // // // ),
                  // // SizedBox(
                  // //   height: 12,
                  // // ),
                  // Divider(
                  //   thickness: 0.28,
                  //   color: Colors.black,
                  // ),
                  // SizedBox(
                  //   height: 12,
                  // ),
                  // AccountPageInfoComponent(
                  //   label: 'Settings',
                  //   userIcon: Icons.settings,
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => SettingScreen(),
                  //       ),
                  //     );
                  //   },
                  // ),
                  // // SizedBox(
                  // //   height: 12,
                  // // ),
                  // // Divider(
                  // //   thickness: 0.28,
                  // //   color: Colors.black,
                  // // ),
                  // // SizedBox(height: 12,),
                  // // AccountPageInfoComponent(
                  // //   label: 'Customer Support',
                  // //   userIcon: Icons.support_agent_rounded,
                  // //   onTap: () {},
                  // // ),
                  // SizedBox(
                  //   height: 12,
                  // ),
                  // Divider(
                  //   thickness: 0.28,
                  //   color: Colors.black,
                  // ),
                  // SizedBox(
                  //   height: 12,
                  // ),
                  // AccountPageInfoComponent(
                  //   label: 'App Version',
                  //   userIcon: Icons.shield,
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => AppVersion()),
                  //     );
                  //   },
                  // ),
                  // SizedBox(
                  //   height: 12,
                  // ),
                  // Divider(
                  //   thickness: 0.28,
                  //   color: Colors.black,
                  // ),
                  // SizedBox(
                  //   height: 12,
                  // ),
                  // AccountPageInfoComponent(
                  //   label: 'Log Out',
                  //   userIcon: Icons.logout,
                  //   onTap: () {

                  //   },
                  // ),
                  // SizedBox(
                  //   height: 12,
                  // ),
                  // Divider(
                  //   thickness: 0.28,
                  //   color: Colors.black,
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
