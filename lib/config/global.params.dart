import 'package:flutter/material.dart';

class GlobalParams{
  static List<Map<String,dynamic>> menus=[
    {"title":"Home","icon":Icon(Icons.home),
      "route":"/home"},
    {"title":"About","icon":Icon(Icons.sunny_snowing),
      "route":"/meteo"},
    {"title":"Gallerie","icon":Icon(Icons.photo),
      "route":"/gallerie"},
    {"title":"Pays","icon":Icon(Icons.location_city),
      "route":"/pays"},
    {"title":"Contact","icon":Icon(Icons.contact_page),
      "route":"/contact"},
    {"title":"Paramètres","icon":Icon(Icons.settings),
      "route":"/parametres"},
    {"title":"Déconnexion","icon":Icon(Icons.logout),
      "route":"/authentification"},
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