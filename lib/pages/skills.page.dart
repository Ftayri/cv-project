import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../menu/drawer.widget.dart';

class SkillsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compétences & Certifications'),
        leading: DrawerWidget(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'TECHNOLOGIES ET FRAMEWORKS :',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SkillCard(
            title: 'Laravel',
            icon: FontAwesomeIcons.laravel,
            color: Colors.red,
          ),
          SkillCard(
            title: 'ExpressJS',
            icon: FontAwesomeIcons.nodeJs,
            color: Colors.green,
          ),
          SkillCard(
            title: 'Flutter',
            icon: FontAwesomeIcons.android,
            color: Colors.blue,
          ),
          SkillCard(
            title: 'Angular',
            icon: FontAwesomeIcons.angular,
            color: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'CERTIFICATION :',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SkillCard(
            title: 'CCNA 1',
            icon: FontAwesomeIcons.networkWired,
            color: Colors.blue,
          ),
          SkillCard(
            title: ' (AWS) Cloud Practitioner',
            icon: FontAwesomeIcons.aws,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const SkillCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
       // Adjust this value to change the width of the card
      margin: EdgeInsets.all(16.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: color,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
