import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class RadioScreen extends StatelessWidget {
  final String radio =
      'https://music.youtube.com/channel/UC29LOrmvszsTUM2n7fYC-Aw';

  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
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
