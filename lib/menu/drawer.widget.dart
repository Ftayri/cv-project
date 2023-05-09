import 'package:cv/config/global.params.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../config/my_theme.dart';

class MyDrawer extends StatefulWidget {
  final ValueSetter setIndex;

  const MyDrawer({Key? key, required this.setIndex}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final theme = isDark ? MyTheme.myDarkTheme : MyTheme.myLightTheme;
    return Scaffold(
      backgroundColor: isDark ? MyTheme.backgroundDark : MyTheme.backgroundLight,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, right: 60, left: 60, bottom: 25),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/iyed.jpg'),
              backgroundColor: theme.tertiary,
              radius: 50,
            ),
          ),
          Text("Iyed Zairi"),

          Expanded(
            child: ListView.builder(
              itemCount: GlobalParams.menus.length,
              itemBuilder: (context, index) {
                final item = GlobalParams.menus[index];
                return drawerList(
                  item['icon'],
                  item['title'],
                  index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget drawerList(Icon icon, String text, int index) {
    return GestureDetector(
      onTap: () {
        widget.setIndex(index);
        ZoomDrawer.of(context)?.toggle();
      },
      child: Container(
        margin: EdgeInsets.only(left: 20, bottom: 25),
        child: Row(
          children: [
            icon,
            SizedBox(width: 12),
            Text(text),
          ],
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ZoomDrawer.of(context)?.toggle();
      },
      icon: Icon(Icons.menu),
    );
  }
}
