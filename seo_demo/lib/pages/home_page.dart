import 'package:flutter/material.dart';
import 'package:flutter_seo/pages/app_head.dart';
import 'package:go_router/go_router.dart';
import 'package:seo/seo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: AppHead(
        title: 'Home Page',
        description: 'Home Page',
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Seo.text(
                    text: 'Этот текст добавиться на HTML страницу',
                    child:
                        const Text('Этот текст добавиться на HTML страницу')),
                ElevatedButton(
                    onPressed: () {
                      context.go('/detail');
                    },
                    child: const Text('Detail Page')),
                ElevatedButton(
                    onPressed: () {
                      context.go('/main/first');
                    },
                    child: const Text('Main Page'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
