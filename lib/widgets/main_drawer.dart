import 'package:flutter/material.dart';

import '../screens/categories_screen.dart';
import '../screens/news_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 118,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              "Akdeniz Post",
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            'Öne Çıkanlar',
            Icons.newspaper,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTile(
            'Kategoriler',
            Icons.category,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(CategoriesScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
