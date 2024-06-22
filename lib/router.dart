import 'package:go_router/go_router.dart';
import 'package:ressue_flutter/views/home/home_page.dart';
import 'package:ressue_flutter/views/login/login_page.dart';

class PageRouter {
  static GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginPage(),
        routes: [
          GoRoute(
            path: 'Home',
            builder: (context, state) => const HomePage(),
          )
        ],
      ),
    ],
  );
}
