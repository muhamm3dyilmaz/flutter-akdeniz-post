import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../dummy_data.dart';

class NewsDetailScreen extends StatelessWidget {
  static const routeName = '/news-detail';

  // void selectAuthor(BuildContext context) {
  //   Navigator.of(context).pushNamed(AuthorScreen.routeName);
  // }

  @override
  Widget build(BuildContext context) {
    final newsId = ModalRoute.of(context).settings.arguments as String;
    final selectedNews = DUMMY_NEWS.firstWhere((news) => news.id == newsId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedNews.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              child: ImageNetwork(
                image: selectedNews.imageUrl,
                imageCache: CachedNetworkImageProvider(selectedNews.imageUrl),
                fitAndroidIos: BoxFit.cover,
                curve: Curves.easeIn,
                onLoading: const CircularProgressIndicator(
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          selectedNews.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          selectedNews.content,
                          // maxLines: 1000,
                          // softWrap: false,
                          // overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            Align(
              alignment: Alignment(0.95, 0.0),
              child: GestureDetector(
                //onTap: () => selectAuthor(context),
                child: Container(
                  width: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 120, 119, 119),
                  ),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        backgroundImage: NetworkImage(
                          selectedNews.authorImage,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        selectedNews.author,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
