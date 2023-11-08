import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thandri_sannidhi/api/firebase_api.dart';
import 'package:thandri_sannidhi/firebase_options.dart';
import 'package:thandri_sannidhi/splash.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseApi().initNotifications();

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    ),
  );
}
