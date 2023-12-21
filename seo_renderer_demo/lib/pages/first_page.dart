import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinkRenderer(
          text: 'Go to First Detail Page',
          href: '/main/first/detail',
          child: ElevatedButton(
              onPressed: () {
                context.go('/main/first/detail');
              },
              child: const Text('Go to First Detail Page')),
        ),
        const Center(
          child: TextRenderer(
              style: TextRendererStyle.paragraph, child: Text('First page')),
        ),
      ],
    );
  }
}
