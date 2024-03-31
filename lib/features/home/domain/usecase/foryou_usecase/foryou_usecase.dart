import 'package:toktik/features/home/domain/model/foryou/fouryou_model.dart';
import 'package:toktik/features/home/domain/repository/foryour_repository.dart';

class FouryouUsecase {
  final ForyouRepository foryouRepository;

  FouryouUsecase({required this.foryouRepository});

  Future<List<ForyouModel>> fetchForyou() async {
    return foryouRepository.fetchFour();
  }
}
