import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/src/navigation_delegate.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitScreen extends StatefulWidget {
  String link;
  GitScreen({super.key, required this.link});

  @override
  State<GitScreen> createState() => _GitScreenState(link: link);
}

class _GitScreenState extends State<GitScreen> {
  String link;
  _GitScreenState({required this.link});
  late WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    // ..setBackgroundColor(const Color(0x00000000))
    ..loadRequest(Uri.parse("https://" + link))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: Get.back,
              icon: Icon(Icons.arrow_back),
            )),
        body: WebViewWidget(controller: controller));
  }
}
