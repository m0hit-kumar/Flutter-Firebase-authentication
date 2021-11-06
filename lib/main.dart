import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:test_001/HomePage.dart';

import 'package:test_001/LoginPage.dart';
// import 'package:test_001/SignupPage.dart';
// import 'package:test_001/SignUp.dart';
// import 'package:geolocator/geolocator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginPage(),
    );
  }
}
