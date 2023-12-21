import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_seo/pages/detail_page.dart';
import 'package:flutter_seo/pages/first_detail_page.dart';
import 'package:flutter_seo/pages/first_page.dart';
import 'package:flutter_seo/pages/home_page.dart';
import 'package:flutter_seo/pages/main_page.dart';
import 'package:flutter_seo/pages/second_page.dart';
import 'package:go_router/go_router.dart';
import 'package:seo/seo.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  if (kIsWeb) {
    setPathUrlStrategy();
  }
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(observers: [], routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
            path: 'detail',
            builder: (context, state) {
              return const DetailPage();
            })
      ]),
  StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        if (kIsWeb) {}
        return MainPage(
          navigationShell: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: '/main/first',
                builder: (context, state) {
                  return const FirstPage();
                },
                routes: [
                  GoRoute(
                      path: 'detail',
                      builder: (context, state) {
                        return const FirstDetailPage();
                      })
                ]),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: '/main/second',
                builder: (context, state) {
                  return const SecondPage();
                }),
          ],
        ),
      ])
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SeoController(
      enabled: true,
      tree: WidgetTree(context: context),
      child: SeoController(
        tree: WidgetTree(context: context),
        enabled: true,
        child: MaterialApp.router(
          routerConfig: _router,
        ),
      ),
    );
  }
}
