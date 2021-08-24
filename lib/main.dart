import 'package:flutter/material.dart';
import 'package:htoh/config/palette.dart';
import 'package:htoh/screens/component/bottomNav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Heart-Heart",
      theme: ThemeData(backgroundColor: Palette.primaryColor),
      home: BottomNav(),
    );
  }
}