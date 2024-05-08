import 'package:flutter/material.dart';
import 'package:theatre/presentation/page/home_page.dart';

class TheatreApp extends StatelessWidget {
  const TheatreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Theatre App',
      home: HomePage(),
    );
  }
}
