import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class RadioScreen extends StatelessWidget {
  final String radio =
      'https://stream-152.zeno.fm/s0r8lmrgqt7uv?zs=_CpjUTzqRtCQqFv8tVZ00A';

  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 128, 0, 128),
        title: const Text('Radio'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(radio)),
        ),
      ),
    );
  }
}
