import 'package:flutter/material.dart';
import './common/Footer.dart';
void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title:'myapp',
      theme: ThemeData.light(),
      home:Footer()
    );
  }
}