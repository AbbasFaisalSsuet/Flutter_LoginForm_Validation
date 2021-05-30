import 'package:flutter/material.dart';
import './screens/login_screens.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter HomePage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: login_Screen(),
    );
  }
}
