import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcial_mapa/app/ui/pages/home/utils/painter.dart';
import 'dart:ui' as ui;
import 'dart:typed_data';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<MarkerId, Marker> _makers = Map();

  final _controller = HomeController();
  final _initialCameraPosition =
      const CameraPosition(target: LatLng(13.6979572, -89.1733809), zoom: 12);

  @override
  Widget build(BuildContext context) {
    final Set<Marker> listMarkers = {};

    listMarkers.add(const Marker(
      markerId: MarkerId("1"),
      position: LatLng(13.707555556517736, -89.14164035699251),
      infoWindow:
          InfoWindow(title: "MovelSV Soyapango", snippet: "Sucursal principal"),
      icon: BitmapDescriptor.defaultMarker,
    ));

    listMarkers.add(const Marker(
        markerId: MarkerId("2"),
        position: LatLng(13.699785292573196, -89.1983210480986),
        infoWindow: InfoWindow(title: "Sucursal Calle Arce")));

    listMarkers.add(const Marker(
        markerId: MarkerId("3"),
        position: LatLng(13.700722024734848, -89.22420859664523),
        infoWindow: InfoWindow(title: "Sucursal El Salvador Del Mundo"),
        icon: BitmapDescriptor.defaultMarker));

    return Scaffold(
        appBar: AppBar(
          title: Text("MovilSV"),
        ),
        body: Center(
            child: Container(
          child: GoogleMap(
            onMapCreated: _controller.onMapCreated,
            initialCameraPosition: _initialCameraPosition,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: true,
            markers: listMarkers,
          ),
        )));
  }
}
