import 'dart:ffi';

import 'package:cliq_order_get/Components/BottomSheetComponent.dart';
import 'package:cliq_order_get/Components/TextButtonComponent.dart';
import 'package:cliq_order_get/Components/TopBarComponent.dart';
import 'package:cliq_order_get/ConstantColors.dart';
import 'package:cliq_order_get/Views/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
            markerId: MarkerId("id -1"),
            position: LatLng(5.556, -0.1969),
            infoWindow: InfoWindow(
                title: 'Ridge Church School',
                snippet: 'Basic and JHS Catholic School')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            markers: _markers,
            initialCameraPosition: CameraPosition(
              target: LatLng(5.556, -0.1969),
              zoom: 15.4,
            ),
          ),
          BottomSheetComponent(
            height: 225,
            backgroundColor: kPrimaryColor1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 13,
              horizontal: 8,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Container(
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 19,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
