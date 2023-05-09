import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../menu/drawer.widget.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Éducation'),
        leading: DrawerWidget(),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Parcours Académique',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  EducationCard(
                    institution: ' IIT Sfax',
                    degree: 'Génie Logiciel et Informatique Décisionnelle',
                    duration: '2021 - Présent',
                    icon: FontAwesomeIcons.buildingColumns,
                    iconColor: Theme.of(context).primaryColor,
                  ),
                  SizedBox(height: 20),
                  EducationCard(
                    institution: ' Enetcom Sfax',
                    degree: 'Licence en Technologies de l\'Information et de Communication',
                    duration: '2018 - 2021',
                    icon: FontAwesomeIcons.buildingColumns,
                    iconColor: Theme.of(context).primaryColor,
                  ),
                  SizedBox(height: 20),
                  EducationCard(
                    institution: ' Lycée Ibn Rachiq',
                    degree: 'Baccalauréat Mathématique',
                    duration: '2018',
                    icon: FontAwesomeIcons.school,
                    iconColor: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  final String institution;
  final String degree;
  final String duration;
  final IconData icon;
  final Color iconColor;

  const EducationCard({
    Key? key,
    required this.institution,
    required this.degree,
    required this.duration,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: iconColor,
              ),
              SizedBox(width: 10),
              Text(
                institution,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            degree,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Text(
            duration,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
