import 'package:flutter/material.dart';
import 'package:tasklesson10/math/math.dart';

import 'bmi/homescreen.dart';
import 'bmi/resultscreen.dart';
import 'login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "s1":(context)=>homepage(),
        "s2":(context)=>calcPage(),
        "s3":(context)=>loginpage(),
        "s4":(context)=>mathapp(),



      },
      home:homepage(),
    );
  }
}
