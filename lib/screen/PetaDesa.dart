import 'dart:async';

import 'package:appdesa/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PetaDesa extends StatefulWidget {
  @override
  _PetaDesaState createState() => _PetaDesaState();
}

class _PetaDesaState extends State<PetaDesa> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }

  static final CameraPosition _bangunJayaLocation =
      CameraPosition(target: LatLng(-2.5055052, 120.8237896), zoom: 8);

  static final CameraPosition _zoomBangunJaya = CameraPosition(
    target: LatLng(-2.5079869, 120.8209727),
    bearing: 90,
    tilt: 40,
  );

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(_zoomBangunJaya),
    );
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
          _goToTheLake();
        },
        child: Icon(Icons.my_location),
        tooltip: 'Posisi Sekarang',
      ),
    );
  }
}
