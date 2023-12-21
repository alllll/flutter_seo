import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: const Center(
        child: TextRenderer(
            style: TextRendererStyle.paragraph, child: Text('SecondPage')),
      ),
    );
  }
}
