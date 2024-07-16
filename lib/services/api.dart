import 'package:dio/dio.dart';
import 'package:news_hub/models/article_model.dart';

class News {
  Future<List<ArticleModel>> getNews(category,country) async {
    final dio = Dio();
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=$country&apiKey=753f7db0f5fe422a95de1bdb935c1205&category=$category');
    List<Map<String, dynamic>> articles =
        List<Map<String, dynamic>>.from(response.data["articles"]);
    List<ArticleModel> listOfArtModels = [];
    for (var e in articles) {
      if (e['title']!= null && e['url']!=null && e['title']!="[Removed]") {
  listOfArtModels.add(ArticleModel.fromJson(e));
}
    }
    return listOfArtModels;
  }
}
