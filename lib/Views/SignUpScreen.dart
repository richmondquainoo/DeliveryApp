import 'dart:convert';

import 'package:cliq_order_get/Components/LoginTextFieldComponent.dart';
import 'package:cliq_order_get/Components/ProgressDialog.dart';
import 'package:cliq_order_get/Components/TextButtonComponent.dart';
import 'package:cliq_order_get/Components/TopBarComponent.dart';
import 'package:cliq_order_get/Model/OTP.dart';
import 'package:cliq_order_get/Model/User.dart';
import 'package:cliq_order_get/Services/NetworkUtility.dart';
import 'package:cliq_order_get/Services/UtilityService.dart';
import 'package:cliq_order_get/Views/GettingStartedPage.dart';
import 'package:cliq_order_get/util/paths.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:path/path.dart';

import '../ConstantColors.dart';
import '../Constants.dart';
import 'HomeScreen.dart';
import 'LoginScreen.dart';
import 'OtpVerification.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  String name;
  String email;
  String password;
  String phone;

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
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
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
                    label: 'Log in',
                    labelFunction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
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
                        child: LoginTextFieldComponent(
                          controller: nameController,
                          onChange: (value) {
                            name = value;
                          },
                          prefixIcon: Icon(
                            Icons.account_box_outlined,
                            color: Colors.black54,
                          ),
                          hint: 'Name',
                          obscureText: false,
                          enableField: true,
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: LoginTextFieldComponent(
                          controller: emailController,
                          onChange: (value) {
                            email = value;
                          },
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.black54,
                          ),
                          hint: 'Email',
                          obscureText: false,
                          enableField: true,
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: LoginTextFieldComponent(
                          controller: passwordController,
                          onChange: (value) {
                            password = value;
                          },
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.black54,
                          ),
                          hint: 'Password',
                          obscureText: true,
                          enableField: true,
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: LoginTextFieldComponent(
                          controller: phoneController,
                          onChange: (value) {
                            phone = value;
                          },
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.black54,
                          ),
                          hint: 'Phone number',
                          obscureText: false,
                          enableField: true,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: TextButtonComponent(
                            labelColor: kPrimaryColor1,
                            label: 'Sign Up',
                            onTap: () {
                              bool canProceed = isValidEntries(context);

                              if (canProceed) {
                                OTPModel model = OTPModel(
                                  name: name,
                                  email: email,
                                  // pin: pin,
                                  phone: phone,
                                );
                                new UtilityService().confirmationBox(
                                  title: 'Confirmation',
                                  message: 'Are you sure you want to proceed with the registration?',
                                  context: context,
                                  onYes: (){
                                    Navigator.pop(context);
                                    createOTP(
                                        context: context, dataModel: model);
                                  },
                                  onNo: (){
                                    Navigator.pop(context);
                                  }
                                );

                              }
                            }),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              "I have an account.",
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
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            child: Container(
                              child: Text(
                                "Log in",
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

  bool isValidEntries(BuildContext context) {
    if (nameController.text.length == 0) {
      new UtilityService().showMessage(
        context: context,
        message: 'Please enter name.',
        icon: Icon(
          Icons.error_outline,
          color: kDarkOrangeShade,
        ),
      );
      return false;
    } else if (emailController.text.length == 0 ||
        !emailController.text.contains("@") ||
        !emailController.text.contains(".")) {
      new UtilityService().showMessage(
        context: context,
        message: 'Invalid email entered.',
        icon: Icon(
          Icons.error_outline,
          color: kDarkOrangeShade,
        ),
      );
      return false;
    } else if (passwordController.text.length < 4) {
      new UtilityService().showMessage(
        context: context,
        message: 'Password must be 4 or more characters long.',
        icon: Icon(
          Icons.error_outline,
          color: kDarkOrangeShade,
        ),
      );
      return false;
    } else if ((phoneController.text.length != 10)) {
      new UtilityService().showMessage(
        context: context,
        message: 'Invalid length of phone number.',
        icon: Icon(
          Icons.error_outline,
          color: kDarkOrangeShade,
        ),
      );
    } else {
      return true;
    }
    return false;
  }

  void createOTP({OTPModel dataModel, BuildContext context}) async {
    try {
      showDialog(
        context: context,
        builder: (context) {
          return ProgressDialog(displayMessage: 'Please wait...');
        },
      );
      var jsonBody = jsonEncode(dataModel);
      NetworkUtility networkUtility = NetworkUtility();
      Response response = await networkUtility.postDataWithAuth(
          url: OTP_URL, body: jsonBody, auth: ACCESS_TOKEN);

      Navigator.of(context, rootNavigator: true).pop();

      if(response == null){
        //error handling
        new UtilityService().showMessage(
              context: context,
              message: 'An error has occurred. Please try again',
              icon: Icon(
                Icons.error_outline,
                color: kDarkOrangeShade,
              ),
            );
      }else{
        //when there is a response to handle
        int status = response.statusCode;
        var data = jsonDecode(response.body);
        // Handle network error
        if (status == 500 || status == 404 || status == 403) {
          new UtilityService().showMessage(
            message: 'An error has occurred. Please try again',
            icon: Icon(
              Icons.error_outline,
              color: kDarkOrangeShade,
            ),
            context: context,
          );
        } else {
          print('Body: ${response.body}');
          OTPModel otpModel = new OTPModel(
            name: data['name'],
            email: data['email'],
            pin: data['pin'],
            phone: data['phone'],
            password: passwordController.text,
          );

         Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpVerification(otpModel: otpModel,),),);


        }
      }

    } catch (e) {
      print('postUserData error: $e');
      new UtilityService().showMessage(
        context: context,
        message: 'An error has occurred. Please try again',
        icon: Icon(
          Icons.error_outline,
          color: kDarkOrangeShade,
        ),
      );
      Navigator.of(context, rootNavigator: true).pop();
    }
  }
}
