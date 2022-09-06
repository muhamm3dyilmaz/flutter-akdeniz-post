import 'package:flutter/material.dart';
import 'package:gazete/widgets/category_item.dart';

import '../dummy_data.dart';
import '../widgets/main_drawer.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Akdeniz Post"),
      ),
      drawer: MainDrawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://img.freepik.com/premium-vector/old-retro-newspaper-spread-pages-background-poster-vintage-newspaper-pages-seamless-pattern-newsprint-vector-background-illustration-retro-newspaper-page-backdrop_229548-2373.jpg?w=2000",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(15),
          crossAxisSpacing: 10,
          mainAxisSpacing: 30,
          crossAxisCount: 2,
          children: DUMMY_CATEGORIES
              .map(
                (catData) => CategoryItem(
                  catData.id,
                  catData.title,
                  catData.categoryImage,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
