import 'package:flutter/material.dart';
import 'package:fuel_station/home/MyRequests.dart';
import 'package:fuel_station/home/homepage.dart';
import 'package:fuel_station/home/request.dart';
import 'package:fuel_station/home/station.dart';

import 'auth/login.dart';
import 'auth/signup.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        buttonColor: Colors.blue,
      ),
      routes: {
        "login" : (context) => Login(),
        "signup": (context) => SignUp(),
        "homepage" : (context) => HomePage(),
        "request" : (context) => Request(),
        "myrequests" : (context) => MyRequests(),
        "station" : (context) => Station(),


      },

    );
  }
}

