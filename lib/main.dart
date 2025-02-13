import 'package:flutter/material.dart';
import 'package:flutter_breakfast_app/screens/home.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey.shade100),
        useMaterial3: true,
        // textTheme:
      ),
      home: const MyHomePage(),
    );
  }
}
