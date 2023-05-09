import 'package:flutter/material.dart';

class GlobalParams{

  static List<Map<String,dynamic>> menus=[

    {"title":"Informations Personnelles","icon":Icon(Icons.info),
      "route":"/personal-info"},
    {"title":"Etudes","icon":Icon(Icons.school),
      "route":"/studies"},
    {"title":"Expériences professionelles","icon":Icon(Icons.work),
      "route":"/experiences"},
    {"title":"Compétences & Certifications","icon":Icon(Icons.workspace_premium),
      "route":"/certifications"},
    {"title":"Portfolio","icon":Icon(Icons.menu_book),
      "route":"/portfolio"},
    {"title":"Fermer","icon":Icon(Icons.logout),
      "route":""},
  ];

  static List<Map<String,dynamic>> accueil=[
    {"image":AssetImage('images/meteo.png'),"route":"/meteo"},
    {"image":AssetImage('images/gallerie.png'),"route":"/gallerie"},
    {"image":AssetImage('images/pays.png'),"route":"/pays"},
    {"image":AssetImage('images/contact.png'),"route":"/contact"},
    {"image":AssetImage('images/parametres.png'),"route":"/parametres"},
    {"image":AssetImage('images/deconnexion.png'),"route":"/authentification"},
  ];
}