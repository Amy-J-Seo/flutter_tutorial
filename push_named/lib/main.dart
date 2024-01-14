import 'package:flutter/material.dart';
import 'package:push_named/ScreenA.dart';
import 'package:push_named/ScreenB.dart';
import 'package:push_named/ScreenC.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ScreenA(),
        '/B': (context) => const ScreenB(),
        '/C': (context) => const ScreenC(),
      },
    );
  }
}
