import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/src/screens/home_screen.dart';
import 'package:instagram_clone/src/screens/profile_screen.dart';

enum AppRoute {
  home,
  profile,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        name: AppRoute.home.name,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: "/profile",
        name: AppRoute.profile.name,
        builder: (context, state) => ProfileScreen(),
      ),
    ],
  );
});
