import 'dart:async';
//import 'dart:js';
import 'package:cliq_order_get/Views/GettingStartedPage.dart';
import 'package:cliq_order_get/Views/SignUpScreen.dart';
import 'package:flutter/material.dart';

import '../ConstantColors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GettingStarted()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kPrimaryColor1,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo3.png',
                height: 160,
                color: Colors.white,
              ),
              SizedBox(
                height: 40,
              ),
              //CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
