import 'package:appflutter1/view/HomePage.dart';
import 'package:appflutter1/view/login.dart';
import 'package:appflutter1/view/regsiter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyLogin(),
      routes: {
        'login': (context) =>  MyLogin(),
        'MyRegister': (context) =>  MyRegister(),
        'api': (context) =>  api(),
      },
    );

  }
}

