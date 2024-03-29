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

  MapType _mapType = MapType.normal;

  BitmapDescriptor pinLocationIcon;
  Set<Marker> _markers;

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

  static LatLng pinPosition = LatLng(-2.5129673, 120.8197366);
  // Initial Camera
  static final CameraPosition _bangunJayaLocation = CameraPosition(
    target: pinPosition,
    zoom: 19.151926040649414,
  );

  static final CameraPosition _updateMaps = CameraPosition(
    target: LatLng(_locationData.latitude, _locationData.longitude),
    zoom: 19.151926040649414,
  );

  Future<void> updateMapsku() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(_updateMaps),
    );
  }

  void _onMapTypeButtonPressed() {
    setState(() {
      _mapType =
          _mapType == MapType.normal ? MapType.satellite : MapType.normal;
    });
  }

  void setCustomMapPin() async {
    pinLocationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'assets/destination_map_marker.png');
  }

  @override
  void initState() {
    setCustomMapPin();
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
            mapType: _mapType,
            initialCameraPosition: _bangunJayaLocation,
            markers: _markers,
            myLocationButtonEnabled: true,
            compassEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
              setState(() {
                _markers.clear(); 
                _markers.add(
                  Marker(
                      markerId: MarkerId("-2.5129673,120.8197366"),
                      position: pinPosition,
                      icon: pinLocationIcon),
                );
              });
            },
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: FloatingActionButton(
                    onPressed: () async {
                      await lokasiku();
                      await updateMapsku();
                    },
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    backgroundColor: bgColor,
                    child: Icon(
                      Icons.my_location,
                      color: Colors.white,
                      size: 36.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: FloatingActionButton(
                    onPressed: () {
                      _onMapTypeButtonPressed();
                    },
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    backgroundColor: bgColor,
                    child: Icon(
                      Icons.map,
                      color: Colors.white,
                      size: 36.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
