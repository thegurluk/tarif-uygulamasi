import 'package:flutter/material.dart';
import 'package:yemektarifiuygulamasi/splashScreen.dart';
import 'package:yemektarifiuygulamasi/yemek_listesi.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: SplashScreen()
    );
  }
}