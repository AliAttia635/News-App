class ArticleModel {
  String title;
  String description;
  String content;
  String url;
  String image;
  String publishedAt;

  ArticleModel(
      {required this.title,
      required this.description,
      required this.content,
      required this.url,
      required this.image,
      required this.publishedAt});

  factory ArticleModel.fromJson(jsonData) {
    return ArticleModel(
        title: jsonData['title'],
        description: jsonData['description'],
        content: jsonData['content'],
        url: jsonData['url'],
        image: jsonData['image'],
        publishedAt: jsonData['publishedAt']);
  }
}
