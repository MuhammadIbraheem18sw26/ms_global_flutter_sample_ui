import 'package:flutter/material.dart';
import './screens/screens.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primaryColor: Colors.grey),
      debugShowCheckedModeBanner: false,
      title: 'Ms Global',
      home: const HomePage(),
    );
  }
}
