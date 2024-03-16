import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toktik/ui/providers/appbar/app_bar_provider.dart';

import 'package:toktik/ui/widgets/widgets.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const name = "home_screen";
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final appBarProvide = ref.watch(appBarProvider);
    final appBarNotifier = ref.read(appBarProvider.notifier);
    final doIndicatorNotifier = ref.read(doIndicatorPage.notifier);
    final doIndicatorProvide = ref.watch(doIndicatorPage);

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: appBarProvide,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              doIndicatorNotifier.update((state) => index);
            },
            children: [
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.pink,
                child: GestureDetector(
                  onHorizontalDragUpdate: (details) {
                    if (details.primaryDelta! > 1) {
                      appBarNotifier.setPage(0);
                    }
                    if (details.primaryDelta! < -1) {
                      appBarNotifier.setPage(2);
                    }
                  },
                  child: PageView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, verticalIndex) {
                      return Container(
                        color: Colors.primaries[verticalIndex],
                      );
                    },
                  ),
                ),
              ),
              Container(
                color: Colors.indigo,
              )
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: doIndicatorProvide != 2
                ? const AppbarHomeWidget()
                : const AppbarOtherProfileWidget(),
          ),
        ],
      ),
    );
  }
}
