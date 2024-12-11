import 'package:flutter/material.dart';
import 'package:flutter_input/screens/form_screen.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Input',
      home: FormScreen(),
    );
  }
}
