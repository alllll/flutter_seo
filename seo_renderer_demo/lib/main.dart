import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_seo/pages/detail_page.dart';
import 'package:flutter_seo/pages/first_detail_page.dart';
import 'package:flutter_seo/pages/first_page.dart';
import 'package:flutter_seo/pages/home_page.dart';
import 'package:flutter_seo/pages/main_page.dart';
import 'package:flutter_seo/pages/second_page.dart';
import 'package:go_router/go_router.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:seo/seo.dart';
import 'package:seo_renderer/helpers/renderer_state.dart';
import 'package:seo_renderer/helpers/robot_detector_web.dart';
import 'package:url_strategy/url_strategy.dart';

late MetaSEO meta;

void main() {
  if (kIsWeb) {
    MetaSEO().config();
    meta = MetaSEO();
    setPathUrlStrategy();
  }
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(observers: [
  seoRouteObserver
], routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        if (kIsWeb && state.fullPath == '/') {
          meta.ogTitle(ogTitle: 'Home Page');
          meta.description(description: 'Home Page');
          meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web, Home Page');
        }

        return const HomePage();
      },
      routes: [
        GoRoute(
            path: 'detail',
            builder: (context, state) {
              if (kIsWeb) {
                meta.ogTitle(ogTitle: 'Detail Page');
                meta.description(description: 'Detail Page');
                meta.keywords(
                    keywords: 'Flutter, Dart, SEO, Meta, Web, Detail Page');
              }
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
                  if (kIsWeb) {
                    // Define MetaSEO object

                    // add meta seo data for web app as you want
                    meta.ogTitle(ogTitle: 'First Page');
                    meta.description(description: 'First Page');
                    meta.keywords(
                        keywords: 'Flutter, Dart, SEO, Meta, Web, First Page');
                  }
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
                  if (kIsWeb) {
                    // Define MetaSEO object

                    // add meta seo data for web app as you want
                    meta.ogTitle(ogTitle: 'Second Page');
                    meta.description(description: 'Second Page');
                    meta.keywords(
                        keywords: 'Flutter, Dart, SEO, Meta, Web, Second Page');
                  }
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
      child: RobotDetector(
        debug: true,
        child: MaterialApp.router(
          routerConfig: _router,
        ),
      ),
    );
  }
}
