import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../config/global.params.dart';

class MyDrawer extends StatelessWidget {
  late SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Center(
              child: CircleAvatar(
                radius: 80,
              ),
            ),
          ),
          //parcourir les différents éléments du menu
          ...(GlobalParams.menus as List).map((item) {
            return ListTile(
              title: Text('${item['title']}',style: TextStyle(fontSize: 22),),
              leading: item['icon'],
              trailing: Icon(Icons.arrow_right),
              onTap: () async{
                if('${item['title']}'!="Déconnexion") {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "${item['route']}");
                }
                else
                {
                  prefs = await SharedPreferences.getInstance();
                  prefs.setBool("connecte", false);
                  Navigator.of(context).pushNamedAndRemoveUntil('/login',
                          (Route<dynamic> route) => false);
                }
              },
            );
          })

        ],
      ),
    );
    throw UnimplementedError();
  }

}