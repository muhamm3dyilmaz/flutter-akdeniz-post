import 'package:flutter/material.dart';

import '../screens/news_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String categoryImage;

  CategoryItem(
    this.id,
    this.title,
    this.categoryImage,
  );

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      NewsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Colors.black,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: NetworkImage(categoryImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 2.0),
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.grey.withOpacity(0.0),
                  Colors.white54,
                ],
                stops: [0.0, 0.6],
              ),
            ),
          )
        ],
      ),
    );
  }
}
