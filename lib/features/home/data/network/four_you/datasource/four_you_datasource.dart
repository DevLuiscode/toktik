import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:toktik/features/home/domain/model/foryou/fouryou_model.dart';

class ForyouDatasource {
  final client = Supabase.instance.client;

  Future<List<ForyouModel>> fecthForyou() async {
    final response = await client.from('user').select(
          'id,image_profile,videos(name,description,like,comment,share,url,save)',
        );

    final listResponse = response.map((e) {
      return ForyouModel.fromJson(e);
    }).toList();

    return listResponse;
  }
}
