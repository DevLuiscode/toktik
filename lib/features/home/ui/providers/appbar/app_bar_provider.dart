import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appBarProvider =
    StateNotifierProvider<AppBarNotifier, PageController>((ref) {
  final doIndicator = ref.read(doIndicatorPage.notifier);
  return AppBarNotifier(doIndicator: doIndicator);
});

class AppBarNotifier extends StateNotifier<PageController> {
  AppBarNotifier({required this.doIndicator})
      : super(PageController(initialPage: 1));

  final StateController doIndicator;

  void setPage(int page) {
    if (page == 0) {
      state.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
      doIndicator.update((state) => page);
    }
    if (page == 1) {
      state.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
      doIndicator.update((state) => page);
    }
    if (page == 2) {
      state.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }
}

final doIndicatorPage = StateProvider<int>((ref) => 1);
