import 'package:cv/config/my_theme.dart';
import 'package:cv/menu/drawer.widget.dart';
import 'package:cv/pages/Etudes.dart';
import 'package:cv/pages/personal_info.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return ZoomDrawer(
      menuScreen: MyDrawer(setIndex: (index){
        setState(() {
          currentIndex = index;
        });
      },),
      mainScreen: currentScreen(),
      borderRadius: 30,
      showShadow: true,
      angle: 0.0,
      slideWidth: MediaQuery.of(context).size.width * 0.85,
      menuBackgroundColor: isDark ? MyTheme.myDarkTheme.primaryContainer : MyTheme.myLightTheme.primaryContainer,
    );
  }

  Widget currentScreen(){
  switch(currentIndex){
    case 0:
      return HomeScreen();
    case 1:
      ZoomDrawer.of(context)?.toggle();
      return PersonalInfoPage();
    case 2:
      return EducationPage();
    case 4:
      return HomeScreen();
    default:
      return HomeScreen();
  }
  }

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        leading: DrawerWidget(),
      ),
    );
  }
}

