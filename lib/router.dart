import 'package:go_router/go_router.dart';
import 'package:ressue_flutter/views/home/home_page.dart';

class PageRouter {
  static GoRouter router = GoRouter(
    initialExtra: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
