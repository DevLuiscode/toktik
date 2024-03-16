import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toktik/ui/providers/appbar/app_bar_provider.dart';

class AppbarHomeWidget extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  const AppbarHomeWidget({
    super.key,
  });

  @override
  AppbarWidgetState createState() => AppbarWidgetState();
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppbarWidgetState extends ConsumerState<AppbarHomeWidget> {
  final title = ["Siguiendo", "Para ti"];
  @override
  Widget build(BuildContext context) {
    final doIndicator = ref.watch(doIndicatorPage);
    final appbarNotifier = ref.read(appBarProvider.notifier);
    return AppBar(
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            2,
            (index) => GestureDetector(
              onTap: () {
                appbarNotifier.setPage(index);
              },
              child: TitleAppBarWidget(
                title: title[index],
                isActive: index == doIndicator,
              ),
            ),
          ),
        ],
      ),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.tv_outlined),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_outlined,
            size: 30,
          ),
        ),
      ],
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
    );
  }
}

class TitleAppBarWidget extends ConsumerStatefulWidget {
  const TitleAppBarWidget({
    super.key,
    required this.title,
    required this.isActive,
  });
  final String title;
  final bool isActive;

  @override
  TitleAppBarWidgetState createState() => TitleAppBarWidgetState();
}

class TitleAppBarWidgetState extends ConsumerState<TitleAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.title,
          ),
        ),
        AnimatedContainer(
          duration: const Duration(seconds: 2),
          child: Container(
            height: 5,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: widget.isActive ? Colors.white : null,
            ),
          ),
        )
      ],
    );
  }
}
