import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toktik/features/home/ui/providers/appbar/app_bar_provider.dart';

class AppbarOtherProfileWidget extends ConsumerStatefulWidget {
  const AppbarOtherProfileWidget({
    super.key,
  });

  @override
  AppbarOtherProfileWidgetState createState() =>
      AppbarOtherProfileWidgetState();
}

class AppbarOtherProfileWidgetState
    extends ConsumerState<AppbarOtherProfileWidget> {
  @override
  Widget build(BuildContext context) {
    final appbarNotifer = ref.read(appBarProvider.notifier);
    return AppBar(
      leading: IconButton(
        onPressed: () {
          appbarNotifer.setPage(1);
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
      title: const Text("Diversitok"),
      centerTitle: true,
      actions: [
        IconButton(
          splashRadius: 10,
          onPressed: () {},
          icon: const Icon(Icons.notifications_active_outlined),
        ),
        IconButton(
          splashRadius: 10,
          onPressed: () {},
          icon: const Icon(Icons.share_outlined),
        ),
      ],
    );
  }
}
