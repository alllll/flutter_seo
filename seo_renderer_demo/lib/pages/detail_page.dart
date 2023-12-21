import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: const Center(
        child: TextRenderer(
            style: TextRendererStyle.paragraph, child: Text('Detail page')),
      ),
    );
  }
}
