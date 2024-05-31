import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BodyWebView extends StatefulWidget {
  const BodyWebView({super.key});

  @override
  State<BodyWebView> createState() => _BodyWebViewState();
}

class _BodyWebViewState extends State<BodyWebView> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://chat.openai.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://chat.openai.com/'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page Web View ")),
      body: WebViewWidget(controller: controller),
    );
  }
}
