// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_alqoud/Contact.dart';
import 'package:flutter_alqoud/home.dart';
import 'package:flutter_alqoud/Services.dart';
import 'package:flutter_alqoud/About.dart';
import 'package:flutter_alqoud/BookingForm.dart';
import 'package:flutter_alqoud/BusinessPlanConsultService.dart';
import 'package:flutter_alqoud/CateringService.dart';
import 'package:flutter_alqoud/CoachingService.dart';
import 'package:flutter_alqoud/EventManagementService.dart';
import 'package:flutter_alqoud/InternshipService.dart';
import 'package:flutter_alqoud/Workshops.dart';
import 'package:flutter_alqoud/SpeakerProfile.dart';
import 'package:flutter_alqoud/EnglishCV.dart';
import 'package:flutter_alqoud/ArabicCV.dart';
import 'package:flutter_alqoud/ThankYou.dart';

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
        "/BusinessPlanConsultService": (context) =>
            BusinessPlanConsultService(),
        "/CateringService": (context) => CateringService(),
        "/CoachingService": (context) => CoachingService(),
        "/EventManagementService": (context) => EventManagementService(),
        "/InternshipService": (context) => InternshipService(),
        "/Workshops": (context) => Workshops(),
        "/SpeakerProfile": (context) => SpeakerProfile(),
        "/EnglishCV": (context) => EnglishCV(),
        "/ArabicCV": (context) => ArabicCV(),
        "/ThankYou": (context) => ThankYou(),
      },
    );
  }
}
