import 'package:flutter/material.dart';
import 'package:weather_app_revision/currentpage/currentpage.dart';
import 'package:weather_app_revision/widget/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const CurrentPage(),
    );
  }
}
