import 'dart:convert';

import 'package:cliq_order_get/Components/ProgressDialog.dart';
import 'package:cliq_order_get/Components/TextButtonComponent.dart';
import 'package:cliq_order_get/Components/TopBarComponent.dart';
// import 'package:cliq_order_get/Model/LoginOTP.dart';
import 'package:cliq_order_get/Model/OTP.dart';
import 'package:cliq_order_get/Model/User.dart';
import 'package:cliq_order_get/Services/NetworkUtility.dart';
import 'package:cliq_order_get/Services/UtilityService.dart';
import 'package:cliq_order_get/Views/OtpScreen.dart';
import 'package:cliq_order_get/Views/OtpVerification.dart';
import 'package:cliq_order_get/Views/SignUpScreen.dart';
import 'package:cliq_order_get/util/paths.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../ConstantColors.dart';
import '../Constants.dart';
import 'GettingStartedPage.dart';
import 'HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  String email;
  String password;

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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                  child: TopBarComponent(
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 17,
                    ),
                    iconFunction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GettingStarted(),
                        ),
                      );
                    },
                    label: 'Sign Up',
                    labelFunction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 75,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        child: TextFormField(
                          //controller: controller,
                          //onChanged: onChange(),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: TextFormField(
                          //controller: controller,
                          //onChanged: onChange(),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline),
                            hintText: 'Password',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OtpScreen(),
                              ));
                        },
                        child: Container(
                          child: Text(
                            'Forgot your password?',
                            style: GoogleFonts.lato(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: kPrimaryColor1,
                              letterSpacing: 0.21,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        child: TextButtonComponent(
                            labelColor: kPrimaryColor1,
                            label: 'Log in',
                            onTap: () {
                              //Validation
                              // bool canProceed = isValidEntries(context);
                              //
                              // if (canProceed) {
                              //   UserModel model = UserModel(
                              //     email: email,
                              //     password: password,
                              //   );
                              // }

                              //1. Validate fields
                              //2. Authenticate against local db - localAuthentication
                              //3. If localAuthentication fails, authenticate against cloud db
                              //4. If cloud authentication is successful, save details into local db
                              //5. Proceed to home page/screen
                              //6. If Authentication fails, display auth fail message


                            }),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              "I dont have an acoount.",
                              style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.4,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },
                            child: Container(
                              child: Text(
                                "Sign up",
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.4,
                                  color: kPrimaryColor1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isValidEntries(BuildContext context){
    if(emailController.text.length == 0 ||
        !emailController.text.contains("@") ||
        !emailController.text.contains(".")){
      new UtilityService().showMessage(
        context: context,
        message: 'Please enter name',
        icon:Icon(Icons.error_outline,
          color: Colors.red,
        )
      );
      return false;
    }else if(passwordController.text.length < 4){
      new UtilityService().showMessage(
        context: context,
        message: 'Password must be 4 or more characters long',
        icon: Icon(Icons.error_outline,
          color: Colors.red,
        )
      );
      return false;
    }else{
      return true;
    }
  }


  }


