import 'package:flutter/material.dart';
import 'package:flutter_seo/pages/app_head.dart';
import 'package:seo/seo.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHead(
      title: 'Second Page',
      description: 'Second Page',
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
        ),
        body: Center(
          child: Seo.text(text: 'SecondPage', child: const Text('SecondPage')),
        ),
      ),
    );
  }
}
