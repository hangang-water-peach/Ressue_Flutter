import 'package:go_router/go_router.dart';
import 'package:ressue_flutter/views/home/home_issue_page.dart';
import 'package:ressue_flutter/views/login/login_page.dart';

class PageRouter {
  static GoRouter router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
          path: '/',
          builder: (context, state) => const HomeIssuePage(),
          routes: [
            GoRoute(
              path: 'login',
              builder: (context, state) => const LoginPage(),
            )
          ]),
    ],
  );
}
