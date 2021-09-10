import 'package:cliq_order_get/Components/FlatClipPathComponent.dart';
import 'package:flutter/material.dart';

class TrackingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              FlatClipPathComponent(label: 'Tracking Order', onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
