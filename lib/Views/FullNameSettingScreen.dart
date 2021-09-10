import 'package:cliq_order_get/Components/FlatClipPathComponent.dart';
import 'package:cliq_order_get/Components/LoginTextFieldComponent.dart';
import 'package:cliq_order_get/ConstantColors.dart';
import 'package:cliq_order_get/Services/UtilityService.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AccountSettingScreen.dart';

class FullNameSettingScreen extends StatefulWidget {
  @override
  _FullNameSettingScreenState createState() => _FullNameSettingScreenState();
}

class _FullNameSettingScreenState extends State<FullNameSettingScreen> {
  var newProfileNameController = TextEditingController();

  String newProfileName;


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
                      builder: (context) => AccountSettingScreen(),
                    ),
                  );
                },
                label: 'Update Profile Name',
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      child: Container(
                        child: Text(
                          "Change my profile name",
                          style: GoogleFonts.lato(
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 33,
                    ),
                    LoginTextFieldComponent(
                      prefixIcon: Icon(Icons.lock_outline),
                      hint: 'Enter new name',
                      obscureText: false,
                      enableField: true,
                      controller: newProfileNameController,
                      onChange: (value) {
                        newProfileName = value;
                      },
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: (){
                        // bool canProceed = isValidEntries(context);
                        // if(canProceed){}

                        new UtilityService().confirmationBox(
                            title: 'Profile name change confirmation',
                          context: context,
                          message: 'Are you sure you want to change profile name?',
                          onYes: (){},
                          onNo: (){
                            Navigator.pop(context);
                        }
                        );
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                color: kPrimaryColor1,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Done',
                                  style: GoogleFonts.lato(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
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
              )
            ],
          ),
        ),
      ),
    );
  }
   isValidEntries(BuildContext context){
    if(newProfileNameController.text.length == 0){
      new UtilityService().showMessage(
          message: 'Please enter name',
        context: context,
        icon: Icon(Icons.error_outline,color: Colors.red,)
      );
      return false;
    }else{
      return true;
    }

   }
}
