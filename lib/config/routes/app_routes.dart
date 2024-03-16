import 'package:go_router/go_router.dart';
import 'package:toktik/ui/home/home.dart';

final appRoutes = GoRouter(
  initialLocation: '/home_screen',
  routes: [
    GoRoute(
      path: '/home_screen',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    )
  ],
);
