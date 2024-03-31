import 'package:toktik/features/home/domain/model/foryou/fouryou_video_model.dart';

class ForyouModel {
  final int id;
  final String imageProfile;
  final List<ForyouVideoModel> videos;

  ForyouModel({
    required this.id,
    required this.imageProfile,
    required this.videos,
  });

  factory ForyouModel.fromJson(Map<String, dynamic> json) {
    var list = json['videos'] as List;
    List<ForyouVideoModel> videosList =
        list.map((i) => ForyouVideoModel.fromJson(i)).toList();

    return ForyouModel(
      id: json['id'],
      imageProfile: json['image_profile'] ?? "",
      videos: videosList,
    );
  }
}
