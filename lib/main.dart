import 'package:c11_exam_sun_online/pages/audi_Books.dart';
import 'package:c11_exam_sun_online/pages/moody_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MoodyPage(),
    );
  }
}
