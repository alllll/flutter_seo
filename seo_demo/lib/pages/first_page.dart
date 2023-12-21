import 'package:flutter/material.dart';
import 'package:flutter_seo/pages/app_head.dart';
import 'package:go_router/go_router.dart';
import 'package:seo/seo.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHead(
      title: 'First page',
      description: 'First page',
      child: Column(
        children: [
          Seo.link(
            anchor: 'Go to First Detail Page',
            href: '/main/first/detail',
            child: ElevatedButton(
                onPressed: () {
                  context.go('/main/first/detail');
                },
                child: const Text('Go to First Detail Page')),
          ),
          Center(
            child:
                Seo.text(text: 'First page', child: const Text('First page')),
          ),
        ],
      ),
    );
  }
}
