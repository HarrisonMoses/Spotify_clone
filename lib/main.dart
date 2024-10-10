import 'package:flutter/material.dart';
import 'package:spotify/core/config/theme/app-theme.dart';
import 'package:spotify/presentation/splash/page/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      );
  }
}



















