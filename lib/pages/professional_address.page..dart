import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class ProfessionalAddressPage extends StatelessWidget {
  const ProfessionalAddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adresse Professionelle'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(34.841663010053125, 10.755774523010196),
          zoom: 16.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a','b','c'],
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(34.841663010053125, 10.755774523010196),
                width: 80,
                height: 80,
                builder: (context) => Icon(
                  Icons.location_on,
                  size: 50,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      )
      );
  }
}
