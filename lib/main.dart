// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:qfapp/pages/Contact.dart';
import 'package:qfapp/pages/home.dart';
import 'package:qfapp/pages/Services.dart';
import 'package:qfapp/pages/About.dart';
import 'package:qfapp/pages/BookingForm.dart';
import 'package:qfapp/pages/BusinessPlanConsultService.dart';
import 'package:qfapp/pages/CateringService.dart';
import 'package:qfapp/pages/CoachingService.dart';
import 'package:qfapp/pages/EventManagementService.dart';
import 'package:qfapp/pages/InternshipService.dart';

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
                        "/BusinessPlanConsultService": (context) => BusinessPlanConsultService(),
                        "/CateringService": (context) => CateringService(),
                        "/CoachingService": (context) => CoachingService(),
                        "/EventManagementService": (context) => EventManagementService(),
                        "/InternshipService": (context) => InternshipService(),
                  },
            );
      }
}
