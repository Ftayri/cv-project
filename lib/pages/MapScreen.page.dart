import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart'; // import LatLng from latlong2


class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late MapController _mapController;

  static  LatLng _initialPosition = LatLng(51.509364, -0.128928); // remove the const before LatLng

  final List<Marker> _markers = [];

  @override
  void initState() {
    super.initState();
    _markers.add(
      Marker(
        width: 80.0,
        height: 80.0,
        point: _initialPosition,
        builder: (ctx) => Container(
          child: Icon(Icons.location_on),
        ),
      ),
    );
  }

  void _onMapCreated(MapController controller) {
    _mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: _initialPosition,
          zoom: 10,
        ),
        layers : [
          TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
        ],
      ),

    );
  }
}
