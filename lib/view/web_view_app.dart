import 'package:flutter/material.dart';
import 'package:test_web_view/view/body_web_view.dart';

class WebViewTestApp extends StatefulWidget {
  const WebViewTestApp({super.key});

  @override
  State<WebViewTestApp> createState() => _WebViewTestAppState();
}

class _WebViewTestAppState extends State<WebViewTestApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          "App Web View",
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BodyWebView(),
                ),
              ),
              child: const Text("Web View App"),
            ),
          )
        ],
      ),
    ));
  }
}
