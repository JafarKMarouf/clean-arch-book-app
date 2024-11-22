import 'package:clean_arch_bookly_app/core/index.dart';
import 'package:flutter/material.dart';
import 'features/splash/index.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.darkTheme,
      home: const SplashView(),
    );
  }
}
