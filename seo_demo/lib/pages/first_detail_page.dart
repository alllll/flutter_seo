import 'package:flutter/material.dart';
import 'package:flutter_seo/pages/app_head.dart';
import 'package:seo/seo.dart';

class FirstDetailPage extends StatelessWidget {
  const FirstDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHead(
      title: 'First detail page',
      description: 'First detail page',
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
              child: Seo.text(
                  text: 'First Detail page',
                  child: const Text('First Detail page')),
            ),
            Seo.image(
              alt: 'Network Image',
              src: 'https://fakeimg.pl/300x300/?text=Network',
              child: Image.network('https://fakeimg.pl/300x300/?text=Network'),
            )
          ],
        ),
      ),
    );
  }
}
