import 'package:cv/config/my_theme.dart';
import 'package:cv/menu/drawer.widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text('Informations Personelles'),
        leading: DrawerWidget(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/iyed.jpg'),
                ),
              ),
              Text(
                'Etudiant en Génie Logiciel et Informatique Décisionnel',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 12),
              InfoCard(
                  icon: Icons.person,
                  title: "Nom & Prénom",
                  value: "Iyed Zairi"),
              SizedBox(height: 12),
              InfoCard(
                  icon: Icons.phone,
                  title: "Numéro de Téléphone",
                  value: "+216 25 25 31 25"),
              SizedBox(height: 12),
              InfoCard(
                  icon: Icons.email,
                  title: "E-mail",
                  value: "iyed.zairi@gmail.com"),
              SizedBox(height: 12),
              InfoCard(
                  icon: Icons.cake,
                  title: "Date & Lieu de Naissance",
                  value: "05/12/1999 à Sfax"),
              SizedBox(height: 12),
              InfoCard(
                  icon: Icons.place,
                  title: "Adresse",
                  value: "Route de Tunis KM10, Cité Ons, Sfax"),
              SizedBox(height:12),
              InfoCard(
                  icon: Icons.description,
                  title: "Profil",
                  value: "Étudiant en génie informatique. Compétent dans plusieurs domaines, y compris la programmation (C/C++/Python/Java/JavaScript), la résolution de problèmes et la mise" +
                      "en réseau. Apprend rapidement, travaille dur, innovant, responsable, complaisant et" +
                      " peut facilement s'adapter aux nouveaux défis"),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinkIcons(iconData: FontAwesomeIcons.linkedin, uriString: "https://www.linkedin.com/in/iyed-zairi/"),
                  LinkIcons(iconData: FontAwesomeIcons.github, uriString: "https://github.com/Ftayri",)
                ],
              )

              // Add more rows with cards for other personal info here
            ],
          ),
        ),
      ),
    );
  }
}

class LinkIcons extends StatelessWidget {
  final IconData iconData;
  final Uri uri;

  LinkIcons({required this.iconData, required String uriString})
      : uri = Uri.parse(uriString);

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return IconButton(
      icon: Icon(iconData, color: isDark ? MyTheme.myDarkTheme.primary : MyTheme.myLightTheme.primary,),
      onPressed: () => _launchInBrowser(uri),
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

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  InfoCard({required this.icon, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Card(
      elevation: 3,
      child: ListTile(
        leading: Icon(icon,
            color: isDark
                ? MyTheme.myDarkTheme.primary
                : MyTheme.myLightTheme.primary),
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }
}
