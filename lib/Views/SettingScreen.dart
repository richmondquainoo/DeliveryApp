import 'package:cliq_order_get/Components/AccountPageInfoComponent.dart';
import 'package:cliq_order_get/Components/FlatClipPathComponent.dart';
import 'package:cliq_order_get/Views/AccountSettingScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';
import '../Constants.dart';
import 'AccountScreen.dart';
import 'FullNameSettingScreen.dart';
import 'PasswordSettingScreen.dart';

class SettingScreen extends StatefulWidget {

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              FlatClipPathComponent(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountScreen(),
                    ),
                  );
                },
                label: 'Settings',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            height: 80,
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
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: kPrimaryColor1,
                                  radius: 20,
                                  child: Icon(
                                    Icons.format_paint,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text('Themes',
                                          style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Colors.black,
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 0.28,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            height: 80,
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
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: kPrimaryColor1,
                                  radius: 20,
                                  child: Icon(
                                    Icons.notifications_none_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text('Notification',
                                          style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Colors.black,
                                          )),
                                    ),
                                  ],
                                ),
                              ],
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
