import 'package:toktik/features/home/domain/model/foryou/fouryou_model.dart';

abstract class ForyouRepository {
  Future<List<ForyouModel>> fetchFour();
}
