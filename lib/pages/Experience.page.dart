import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong2/latlong.dart';

import '../menu/drawer.widget.dart';

class ExperienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expériences Professionnelles'),
        leading: DrawerWidget(),
      ),
      body: Column(
        children: [
          Expanded(
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(51.509364, -0.128928),
                zoom: 9.2,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
              ],
              nonRotatedChildren: [
                RichAttributionWidget(
                  attributions: [
                    TextSourceAttribution(
                      'OpenStreetMap contributors',
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ExperienceCard(
                  company: 'CLINISYS',
                  role: 'Stage d"initiation',
                  duration: 'Juin 2022 - Aout 2022',
                  description:
                  'Développement d"une interface interactive et esthétique qui offre une expérience utilisateur optimale sur différents navigateurs et appareils.',
                  color: Colors.blue,
                  icon: Icons.work,
                ),
                ExperienceCard(
                  company: 'Platana',
                  role: 'Stage d"été',
                  duration: 'Juin 2021 - Aout 2021',
                  description:
                  'Contribuer à Karrio, une plateforme d’expédition multi transporteurs open source extensible, en abstractant eten intégrant les services Webde Chronopost.',
                  color: Colors.green,
                  icon: Icons.laptop,
                ),
                ExperienceCard(
                  company: '123 Corporation',
                  role: 'Stage d"été',
                  duration: 'Juin 2020 - Aout 2020',
                  description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  color: Colors.orange,
                  icon: Icons.code,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String company;
  final String role;
  final String duration;
  final String description;
  final IconData icon;
  final Color color;

  const ExperienceCard({
    Key? key,
    required this.company,
    required this.role,
    required this.duration,
    required this.description,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: color, size: 28),
                SizedBox(width: 16),
                Text(
                  company,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              role,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 8),
            Text(
              duration,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[500],
              ),
            ),
            SizedBox(height: 16),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
