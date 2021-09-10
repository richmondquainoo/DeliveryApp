import 'package:cliq_order_get/Components/ClipPathComponent.dart';
import 'package:flutter/material.dart';

class EmailSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipPath(
                  clipper: ClipPathClass(),
                  child: Container(
                    height: 395,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.15), BlendMode.darken),
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/screen2.jpg'),
                      ),
                      //color: Colors.teal,
                      //borderRadius: BorderRadius.only(
                      //bottomRight: Radius.circular(30),
                      //bottomLeft: Radius.circular(30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                    ),
                    child: Row(
                      children: [
                        Container(
                        ),
                        SizedBox(),
                        Container(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
