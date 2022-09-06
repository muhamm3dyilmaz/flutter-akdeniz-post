import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import 'package:image_network/image_network.dart';
import '../widgets/main_drawer.dart';
import 'news_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void selectNews(BuildContext context) {
    Navigator.of(context).pushNamed(
      NewsDetailScreen.routeName,
      // arguments: id,
    );
  }

  Widget build(BuildContext context) {
    final List<String> titles = [
      "Ülke",
      "Müzik",
      "Son Dakika",
    ];

    final List<Widget> images = [
      InkWell(
        onTap: () {},
        child: Container(
          child: ImageNetwork(
            image:
                'https://trthaberstatic.cdn.wp.trt.com.tr/resimler/1784000/milli-muharip-ucak-trthaber-1785173.jpg',
            imageCache: CachedNetworkImageProvider(
              'https://trthaberstatic.cdn.wp.trt.com.tr/resimler/1784000/milli-muharip-ucak-trthaber-1785173.jpg',
            ),
            height: 200,
            width: double.infinity,
            fitAndroidIos: BoxFit.cover,
            onLoading: const CircularProgressIndicator(
              color: Colors.grey,
            ),
          ),
        ),
      ),
      InkWell(
        onTap: () {},
        child: Container(
          child: ImageNetwork(
            image:
                'https://www.dergy.com/wp-content/uploads/2021/08/ceza-konser.jpg',
            imageCache: CachedNetworkImageProvider(
              'https://www.dergy.com/wp-content/uploads/2021/08/ceza-konser.jpg',
            ),
            height: 200,
            width: double.infinity,
            fitAndroidIos: BoxFit.cover,
            onLoading: const CircularProgressIndicator(
              color: Colors.grey,
            ),
          ),
        ),
      ),
      InkWell(
        onTap: () {},
        child: Container(
          child: ImageNetwork(
            image:
                'https://icdn.ensonhaber.com/resimler/ajans/2022/05/20/da144943-052a-4483-a33b-3330e6c6ae8f.jpg',
            imageCache: CachedNetworkImageProvider(
              'https://icdn.ensonhaber.com/resimler/ajans/2022/05/20/da144943-052a-4483-a33b-3330e6c6ae8f.jpg',
            ),
            height: 200,
            width: double.infinity,
            fitAndroidIos: BoxFit.cover,
            onLoading: const CircularProgressIndicator(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Öne Çıkanlar"),
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
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: VerticalCardPager(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Chomsky',
                      fontSize: 8,
                    ),
                    titles: titles,
                    images: images,
                    onPageChanged: (page) {},
                    align: ALIGN.CENTER,
                    onSelectedItem: (index) {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
