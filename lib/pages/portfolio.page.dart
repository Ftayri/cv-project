import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../menu/drawer.widget.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
        leading: DrawerWidget(),
      ),
      body: ListView(
        children: [
          PortfolioCard(
            title: 'Projet Tuteuré: Supervision des points d\'accès',
            description: 'Projet IoT innovant pour informer les utilisateurs du taux d\'occupation des lieux publics en temps réel.',
            color: Theme.of(context).primaryColor,
            icon: FontAwesomeIcons.magnifyingGlass,
          ),
          PortfolioCard(
              title: 'Simulation d\'une Voiture Autonome',
              description: "Simulation de voitures autonomes à l'aide du simulateur open-source Udacity's self-driving car simulator.",
              icon: FontAwesomeIcons.car,
              color: Theme.of(context).primaryColor
          ),
          PortfolioCard(title: "Bot Discord: Granblue Fantasy Companion",
              description: "Copropriétaire d'un bot Discord open source vérifié qui fonctionne comme un compagnon pour le jeu 'Granblue Fantasy' avec plus de 10 000 utilisateurs",
              icon: FontAwesomeIcons.discord, color: Theme.of(context).primaryColor),
        ],
      ),
    );
  }
}

class PortfolioCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const PortfolioCard({
    Key? key,
    required this.title,
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
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              description,
              textAlign: TextAlign.justify,
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
