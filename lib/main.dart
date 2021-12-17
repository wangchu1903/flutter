import 'package:flutter/material.dart';
import 'package:flutter_application_7/classwork.dart';
// import 'package:flutter_application_7/retireve.dart';

// import 'package:flutter_application_7/screen/stackdemo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(home: StackExample());
    // return const MaterialApp(home: TextFdl());
    return MaterialApp(home: ClassWork());
  }
}
