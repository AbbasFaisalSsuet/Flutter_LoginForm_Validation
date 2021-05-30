import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login Page')),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 250,
          height: 250,
          color: Colors.black,
          child: Center(
              child: Text(
            'Hello ! Successfullly Loged In ..... !',
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
