import 'package:flutter/material.dart';
import 'package:login_ui/src/screens/login_router.dart';
import '../mixins/validation_mixin.dart';

// ignore: camel_case_types
class login_Screen extends StatefulWidget {
  @override
  _login_ScreenState createState() => _login_ScreenState();
}

// ignore: camel_case_types
class _login_ScreenState extends State<login_Screen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  var email = '';
  var password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Home Screen',
          style: TextStyle(color: Colors.white),
        )),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          // height: 250,
          // width: 300,
          // margin: EdgeInsets.all(100),
          // alignment: Alignment.center,
          // child: Text('Faisal Abbas'),
          // decoration: BoxDecoration(
          //   border: Border.all(width:5,color:Colors.black),
          //   color: Colors.orangeAccent,
          //   borderRadius: BorderRadius.circular(50),
          // ),
          margin: EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avtar.png'),
                    radius: 125,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  emaiField(),
                  SizedBox(
                    height: 20,
                  ),
                  passwordField(),
                  Container(
                    margin: EdgeInsets.only(bottom: 20.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      buttonField(),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Sign Up'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget emaiField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        labelText: 'Email Address',
        hintText: 'example@yahoo.com',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Colors.blue, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.blue, width: 2),
        ),
        // border: OutlineInputBorder(),
      ),

      // ignore: missing_return
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      autocorrect: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        labelText: 'Password',
        hintText: 'Plz Entered Strong Password',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Colors.blue, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.blue, width: 2),
        ),
      ),
      // ignore: missing_return
      validator: validatePassword,
      onChanged: (String value) {
        password = value;
      },
    );
  }

  Widget buttonField() {
    // ignore: deprecated_member_use
    return RaisedButton(
      color: Colors.black,
      child: Text('Sign In', style: TextStyle(color: Colors.white)),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('Successfuly Sign In With Email:$email');
          print('Successfuly Sign In With Password:$password');

          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
            builder: (BuildContext context) {
              return HomeScreen();
            },
          ), (route) => false);
        }
      },
    );
  }
}
