import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart ';
import 'package:image_network/image_network.dart';

import '../screens/news_detail_screen.dart';

class NewsItem extends StatelessWidget {
  final String id;
  final String title;
  final String spoiler;
  final String content;
  final String imageUrl;
  final String author;
  final String authorImage;

  NewsItem({
    @required this.id,
    @required this.title,
    @required this.spoiler,
    @required this.content,
    @required this.imageUrl,
    @required this.author,
    @required this.authorImage,
  });

  void selectNews(BuildContext context) {
    Navigator.of(context).pushNamed(
      NewsDetailScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectNews(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: ImageNetwork(
                    image: imageUrl,
                    imageCache: CachedNetworkImageProvider(imageUrl),
                    height: 200,
                    width: double.infinity,
                    fitAndroidIos: BoxFit.cover,
                    onLoading: const CircularProgressIndicator(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(title, style: Theme.of(context).textTheme.headline5),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Text(spoiler,
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
