import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class News {
  final String id;
  final String title;
  final String spoiler;
  final String content;
  final String imageUrl;
  final List<String> categories;
  final String author;
  final String authorImage;

  const News({
    @required this.id,
    @required this.title,
    @required this.spoiler,
    @required this.content,
    @required this.imageUrl,
    @required this.categories,
    @required this.author,
    @required this.authorImage,
  });
}
