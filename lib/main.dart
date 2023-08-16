// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_alqoud/Contact.dart';
import 'package:flutter_alqoud/Home.dart';
import 'package:flutter_alqoud/Services.dart';
import 'package:flutter_alqoud/About.dart';
import 'package:flutter_alqoud/BookingForm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        "/Services": (context) => Services(),
        "/About": (context) => About(),
        "/Contact": (context) => Contact(),
        "/BookingForm": (context) => BookingForm(),
      },
    );
  }
}
