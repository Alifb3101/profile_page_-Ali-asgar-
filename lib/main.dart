import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_blogger/pages/Home_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
