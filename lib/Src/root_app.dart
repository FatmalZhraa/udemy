import 'package:flutter/material.dart';
import 'package:udemy/Views/screen.dart';

class RootApp extends StatelessWidget{
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen() ,
    );
  }
}