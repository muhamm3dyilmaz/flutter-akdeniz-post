import 'package:flutter/material.dart';
import './screens/news_screen.dart';
import './screens/categories_screen.dart';
import './screens/news_detail_screen.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akdeniz Post',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Color.fromARGB(255, 120, 119, 119),
        canvasColor: Color.fromARGB(255, 254, 255, 226),
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 120, 119, 119),
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 35, fontFamily: 'Chomsky'),
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: TextStyle(
                color: Colors.black,
                fontSize: 45,
                fontFamily: 'Chomsky',
              ),
              headline5: TextStyle(
                fontSize: 20,
              ),
              headline6: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
      ),
      home: HomeScreen(),
      routes: {
        CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
        NewsScreen.routeName: (ctx) => NewsScreen(),
        NewsDetailScreen.routeName: (ctx) => NewsDetailScreen(),
      },
    );
  }
}
