import 'package:flutter/material.dart';
import 'package:test_web_view/view/web_view_app.dart';

class RunAppTest extends StatelessWidget {
  const RunAppTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Web View App',
      debugShowCheckedModeBanner: false,
      home: WebViewTestApp(),
    );
  }
}
