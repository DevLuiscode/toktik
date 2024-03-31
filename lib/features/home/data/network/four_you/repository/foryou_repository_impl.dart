import 'package:toktik/features/home/data/network/four_you/datasource/four_you_datasource.dart';
import 'package:toktik/features/home/domain/model/foryou/fouryou_model.dart';
import 'package:toktik/features/home/domain/repository/foryour_repository.dart';

class ForyouRepositoryImpl extends ForyouRepository {
  final ForyouDatasource foryouDatasource;

  ForyouRepositoryImpl({required this.foryouDatasource});
  @override
  Future<List<ForyouModel>> fetchFour() async {
    return foryouDatasource.fecthForyou();
  }
}
