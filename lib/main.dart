import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/splash_page.dart';

void main() {
  runApp(TailorDiaryApp());
}

class TailorDiaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tailor Diary App',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.amber[50],
          primarySwatch: Colors.deepPurple,
        ),
        home: SplashPage());
  }
}
