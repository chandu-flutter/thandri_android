import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class YoutubeLive extends StatelessWidget {
  final String youtubelive =
      'https://www.youtube.com/playlist?list=PLDb1p7boCQFEwNpMHaiBP_Sxak1jJUtpS';

  const YoutubeLive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(youtubelive)),
        ),
      ),
    );
  }
}
