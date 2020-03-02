import 'dart:async';

import 'package:appdesa/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class PetaDesa extends StatefulWidget {
  @override
  _PetaDesaState createState() => _PetaDesaState();
}

class _PetaDesaState extends State<PetaDesa> {
  Completer<GoogleMapController> _controller = Completer();

  Location location = new Location();
  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  static LocationData _locationData;

  Future<void> lokasiku() async {
    _locationData = await location.getLocation();

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (_serviceEnabled) {
        return;
      }
    }
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.DENIED) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.GRANTED) {
        return _locationData;
      }
    }
    print(_locationData);
  }

  // Initial Camera
  static final CameraPosition _bangunJayaLocation = CameraPosition(
    target: LatLng(-2.5088628, 120.8218714),
    zoom: 14,
  );

  static final CameraPosition _updateMaps = CameraPosition(
    target: LatLng(_locationData.latitude , _locationData.longitude),
    zoom: 19.151926040649414,
  );

  Future<void> updateMapsku() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_updateMaps));
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
        onPressed: () async {
          await lokasiku();
          await updateMapsku();
        },
        child: Icon(Icons.my_location),
        tooltip: 'Posisi Sekarang',
      ),
    );
  }
}
