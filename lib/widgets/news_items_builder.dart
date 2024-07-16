import 'package:flutter/material.dart';
import 'package:news_hub/models/article_model.dart';
import 'package:news_hub/widgets/news_items.dart';

// ignore: must_be_immutable
class NewsItemsBuilder extends StatelessWidget {
   NewsItemsBuilder({
    super.key,
    required this.listOfModels
  });
  List<ArticleModel> listOfModels;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listOfModels.length,
      itemBuilder: (BuildContext context, int index) {
        return  NewsItem(model: listOfModels[index],);
      },
    );
  }
}
