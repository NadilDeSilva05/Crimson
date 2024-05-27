import 'package:crimson/firebase_options.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'WelcomePage/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ));
  } catch (e) {
    runApp(MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Error initializing Firebase: $e'),
        ),
      ),
    ));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crimson+',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: const HomePage(),
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
