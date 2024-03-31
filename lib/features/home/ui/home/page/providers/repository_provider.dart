import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toktik/features/home/data/network/four_you/datasource/four_you_datasource.dart';
import 'package:toktik/features/home/data/network/four_you/repository/foryou_repository_impl.dart';

final repositoryProvider = Provider<ForyouRepositoryImpl>((ref) {
  final fouryouDatasource = ref.watch(foryouDatasourceProvider);

  return ForyouRepositoryImpl(foryouDatasource: fouryouDatasource);
});

final foryouDatasourceProvider = Provider<ForyouDatasource>((ref) {
  return ForyouDatasource();
});
