import 'package:flutter/material.dart';
import 'package:news_hub/models/article_model.dart';
import 'package:news_hub/services/api.dart';
import 'package:news_hub/widgets/loading_widget.dart';
import 'package:news_hub/widgets/news_items_builder.dart';

class VerticalList extends StatefulWidget {
  const VerticalList({
    super.key,
    required this.category,
    required this.country,
  });
  final String category;
  final String country;


  @override
  State<VerticalList> createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  late Future<List<ArticleModel>> future;

  @override
  void initState() {
    super.initState();
    future = News().getNews(widget.category,widget.country);
  }

  @override
  void didUpdateWidget(covariant VerticalList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.category != widget.category) {
      setState(() {
        future = News().getNews(widget.category,widget.country);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.26,
      child: FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: Loading());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No news available'));
          } else {
            return NewsItemsBuilder(listOfModels: snapshot.data!);
          }
        },
      ),
    );
  }
}
