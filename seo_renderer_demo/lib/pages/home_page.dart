import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/seo_renderer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TextRenderer(
                  style: TextRendererStyle.paragraph,
                  child: Text('Этот текст добавиться на HTML страницу')),
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
    );
  }
}
