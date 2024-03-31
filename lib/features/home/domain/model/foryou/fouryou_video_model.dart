class ForyouVideoModel {
  final String url;
  final int like;
  final String name;
  final int save;
  final int share;
  final int comment;
  final String description;

  ForyouVideoModel({
    required this.url,
    required this.like,
    required this.name,
    required this.save,
    required this.share,
    required this.comment,
    required this.description,
  });

  factory ForyouVideoModel.fromJson(Map<String, dynamic> json) {
    return ForyouVideoModel(
      url: json['url'],
      like: json['like'],
      name: json['name'],
      save: json['save'],
      share: json['share'],
      comment: json['comment'],
      description: json['description'],
    );
  }
}
