import 'package:flutter/material.dart';
import 'package:flutter_seo/pages/app_head.dart';
import 'package:seo/seo.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHead(
      title: 'Detail page',
      description: 'Detail page',
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Detail'),
        ),
        body: Center(
          child:
              Seo.text(text: 'Detail page', child: const Text('Detail page')),
        ),
      ),
    );
  }
}
