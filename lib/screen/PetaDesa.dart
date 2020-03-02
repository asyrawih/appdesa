import 'dart:async';

import 'package:appdesa/style.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PetaDesa extends StatefulWidget {
  @override
  _PetaDesaState createState() => _PetaDesaState();
}

class _PetaDesaState extends State<PetaDesa> {
  Completer<GoogleMapController> _controller = Completer();

  final Geolocator _geolocator = Geolocator()..forceAndroidLocationManager;
  static Position _currentPosition;

  _getCurrentLocation() {
    _geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
      print(_currentPosition);
    }).catchError((e) {
      print(e);
    });
  }

  static final CameraPosition _bangunJayaLocation =
      CameraPosition(target: LatLng(-2.5055052, 120.8237896), zoom: 8);

  // static final CameraPosition _posisiSekrang = CameraPosition(
  //   target: LatLng(_currentPosition.latitude, _currentPosition.longitude),
  // );

  // Future<void> _updateCameraMap() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_posisiSekrang));
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'PetaDesa',
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
            Icon(Icons.info)
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.terrain,
            initialCameraPosition: _bangunJayaLocation,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _updateCameraMap();
          _getCurrentLocation();
          print(_currentPosition);
        },
        child: Icon(Icons.my_location),
        tooltip: 'Posisi Sekarang',
      ),
    );
  }
}
