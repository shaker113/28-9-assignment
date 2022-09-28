import 'package:flutter/material.dart';
import 'package:myapp/screens/homePage.dart';
import 'package:myapp/screens/loginscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return homePage();
  }
}
