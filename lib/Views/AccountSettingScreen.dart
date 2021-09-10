import 'package:cliq_order_get/Components/AccountPageInfoComponent.dart';
import 'package:cliq_order_get/Components/ClipPathComponent.dart';
import 'package:cliq_order_get/Components/FlatClipPathComponent.dart';
import 'package:cliq_order_get/Components/MoreCardScreenComponent.dart';
import 'package:cliq_order_get/ConstantColors.dart';
import 'package:cliq_order_get/Views/AccountScreen.dart';
import 'package:cliq_order_get/Views/PasswordSettingScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants.dart';
import 'EmailSettingScreen.dart';
import 'FullNameSettingScreen.dart';
import 'PhoneSettingScreen.dart';

class AccountSettingScreen extends StatelessWidget {
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
                label: 'My Account',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullNameSettingScreen()),
                        );
                      },
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
                                  Icons.person_outline_outlined,
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
                                    child: Text('Full name',
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    child: Text('Nana Amfoh',
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
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
                    Divider(
                      thickness: 0.28,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PasswordSettingScreen()),
                        );
                      },
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
                                  Icons.lock_outline,
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
                                    child: Text('Password',
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    child: Text('*******',
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
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
                    Divider(
                      thickness: 0.28,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmailSettingScreen()),
                        );
                      },
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
                                  Icons.email_outlined,
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
                                    child: Text('Email',
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    child: Text('nanaamfohrichie@gmail.com',
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
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
                    Divider(
                      thickness: 0.28,
                      color: Colors.black,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PhoneSettingScreen()),
                          );
                        },
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
                                    Icons.phone,
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
                                      child: Text('Phone',
                                          style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Colors.black,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Container(
                                      child: Text('0544727866',
                                          style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                    Divider(
                      thickness: 0.28,
                      color: Colors.black,
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
