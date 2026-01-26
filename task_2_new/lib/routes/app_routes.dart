import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_2_new/views/pages/home-screen.dart';
import 'package:task_2_new/views/pages/selector_screen.dart';
import 'package:task_2_new/views/pages/splash_screen.dart';

class AppRoutes {
  static const splash = '/';
  static const home = '/home';
  static const selector = '/selector';

  static final GoRouter appRouter = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        name: "splash",
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: home,
        name: "home",
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: selector,
        name: 'selector',
        builder: (context, state) => const SelectorPage(),
      ),
    ],
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text("Error: ${state.error}"))),
  );
}
