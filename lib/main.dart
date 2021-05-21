import 'package:flutter/material.dart';
import 'package:portfolio/view/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.cupertino,
      home: Home(),
    );
  }
}
