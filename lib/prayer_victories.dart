import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class PrayerVictories extends StatelessWidget {
  final String youtubePlaylistUrl =
      'https://www.youtube.com/playlist?list=PLDb1p7boCQFHvxnrC6W_evjQrrF5fKXg-';

  const PrayerVictories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(youtubePlaylistUrl)),
        ),
      ),
    );
  }
}
