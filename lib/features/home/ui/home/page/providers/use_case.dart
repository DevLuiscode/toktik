import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toktik/features/home/domain/usecase/foryou_usecase/foryou_usecase.dart';
import 'package:toktik/features/home/ui/home/page/providers/repository_provider.dart';

final fetchUsecaseProvider = Provider<FouryouUsecase>((ref) {
  final foryouRepository = ref.watch(repositoryProvider);
  return FouryouUsecase(foryouRepository: foryouRepository);
});
