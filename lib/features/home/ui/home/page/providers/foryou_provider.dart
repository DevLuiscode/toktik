import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toktik/features/home/domain/model/foryou/fouryou_model.dart';
import 'package:toktik/features/home/domain/usecase/foryou_usecase/foryou_usecase.dart';
import 'package:toktik/features/home/ui/home/page/providers/use_case.dart';

final fecthForyouModelProvider =
    StateNotifierProvider<FecthForyouNotifier, List<ForyouModel>>(
  (ref) {
    final foryouUC = ref.watch(fetchUsecaseProvider);
    return FecthForyouNotifier(fouryouUsecase: foryouUC);
  },
);

class FecthForyouNotifier extends StateNotifier<List<ForyouModel>> {
  FecthForyouNotifier({required this.fouryouUsecase}) : super([]);
  final FouryouUsecase fouryouUsecase;
  void loadData() async {
    state = await fouryouUsecase.fetchForyou();
  }
}
