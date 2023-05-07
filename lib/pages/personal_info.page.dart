import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informations Personelles'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ContactRow(
              icon: Icons.person,
              title: 'Nom & Prénom:',
              value: 'Iyed Zairi',
            ),
            SizedBox(height: 16.0),
            ContactRow(
              icon: Icons.email,
              title: 'Email:',
              value: 'iyed.zairi@gmail.com',
            ),
            SizedBox(height: 16.0),
            ContactRow(
              icon: Icons.phone,
              title: 'Numéro de Téléphone',
              value: '25 25 31 25',
            ),
            SizedBox(height: 16.0),
            SocialMediaIcons(),
          ],
        ),
      ),
    );
  }
}

class SocialMediaIcons extends StatelessWidget {
  final Uri _linkedinUri = Uri.parse('https://linkedin.com');

  SocialMediaIcons({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.facebook),
          onPressed: () => _launchInBrowser(_linkedinUri),
        ),
      ],
    );
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}

class ContactRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  ContactRow({required this.icon, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(icon, size: 24.0, color: Theme.of(context).primaryColor,),
        SizedBox(width: 16.0),
        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Text(title, style: TextStyle(fontSize: 16.0)),
          SizedBox(height: 8.0),
          Text(
            value,
            style: TextStyle(fontSize: 20.0),
          ),
      ],
    ),)
    ,
    ]
    ,
    );
  }
}