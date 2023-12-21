import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class FirstDetailPage extends StatelessWidget {
  const FirstDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Center(
            child: TextRenderer(
                style: TextRendererStyle.paragraph,
                child: Text('First Detail page')),
          ),
          ImageRenderer(
            alt: 'Network Image',
            child: Image.network('https://fakeimg.pl/300x300/?text=Network'),
          )
        ],
      ),
    );
  }
}
