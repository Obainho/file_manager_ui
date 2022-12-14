import 'package:flutter/material.dart';
 import 'pages/main_page.dart';

void main() {
  runApp(const MyApp());
}
var clickedIndex = 0;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}