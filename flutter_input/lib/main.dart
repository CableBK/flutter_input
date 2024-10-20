import 'package:flutter/material.dart';
import 'package:flutter_input/screens/home_screen.dart';
import 'package:flutter_input/screens/form_screen.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ลงทะเบียน',
      home: FormScreen(),
    );
  }
}
