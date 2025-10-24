import 'package:flutter/material.dart';
import 'package:studycase_btng/pages/botnav.dart';
import 'package:studycase_btng/pages/login.dart';
import 'package:studycase_btng/pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StudyCase BTNG',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF0228ED)),
      ),
      home: Login(),
    );
  }
}
