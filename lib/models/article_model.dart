
class ArticleModel {

  final String title;
  final String? description;
  final String url;
  final String? urlToImage;
  final String? publishedAt;


  ArticleModel({

    required this.title,
    this.description,
    required this.url,
     this.urlToImage,
     this.publishedAt,

  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(

      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage']??"removed",
      publishedAt: json['publishedAt'],

    );
  }
}
