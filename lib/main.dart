import 'package:cliq_order_get/Views/AccountScreen.dart';
import 'package:cliq_order_get/Views/AccountSettingScreen.dart';
import 'package:cliq_order_get/Views/AppVersion.dart';
import 'package:cliq_order_get/Views/EmailSignUpScreen.dart';
import 'package:cliq_order_get/Views/GettingStartedPage.dart';
import 'package:cliq_order_get/Views/HomeScreen.dart';
import 'package:cliq_order_get/Views/LoginScreen.dart';
import 'package:cliq_order_get/Views/MapScreen.dart';
import 'package:cliq_order_get/Views/OrderDetailsScreen.dart';
import 'package:cliq_order_get/Views/OtpScreen.dart';
import 'package:cliq_order_get/Views/OtpVerification.dart';
import 'package:cliq_order_get/Views/SelectedProductScreen.dart';
import 'package:cliq_order_get/Views/SignUpScreen.dart';
import 'package:cliq_order_get/Views/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'package:cliq_order_get/Views/CheckOutScreen.dart';
import 'package:cliq_order_get/Views/SelectedItem.dart';
import 'package:cliq_order_get/Views/TrackingOrderScreen.dart';

import 'Views/TrackingScreen.dart';

void main() {
  runApp(DeliveryApp());
}
 class DeliveryApp extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: HomeScreen(),
     );
   }
 }

