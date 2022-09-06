import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/news_item.dart';

class NewsScreen extends StatelessWidget {
  static const routeName = '/news-screen';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryNews = DUMMY_NEWS.where((news) {
      return news.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://img.freepik.com/premium-vector/old-retro-newspaper-spread-pages-background-poster-vintage-newspaper-pages-seamless-pattern-newsprint-vector-background-illustration-retro-newspaper-page-backdrop_229548-2373.jpg?w=2000",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return NewsItem(
              id: categoryNews[index].id,
              title: categoryNews[index].title,
              spoiler: categoryNews[index].spoiler,
              content: categoryNews[index].content,
              imageUrl: categoryNews[index].imageUrl,
            );
          },
          itemCount: categoryNews.length,
        ),
      ),
    );
  }
}
