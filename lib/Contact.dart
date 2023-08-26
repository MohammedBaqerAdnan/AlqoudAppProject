// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  Contact({super.key});

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        drawer: Drawer(
          child: Container(
            color: Colors.grey[300],
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("name"),
                  accountEmail: Text("email"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.grey[900]),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("About"),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/About');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Services"),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/Services');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.contacts),
                  title: Text("Contact Us"),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/Contact');
                  },
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        // padding: EdgeInsets.fromLTRB(4, 19, 0, 0),
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            _globalKey.currentState?.openDrawer();
                          },
                        ),
                      ),
                      Padding(
                        // padding: const EdgeInsets.fromLTRB(12, 30, 15, 10),
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "/");
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[300]),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(10),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.fromLTRB(0, 0, 0, 0)),
                          ),
                          child: Container(
                            width: 70,
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              "Home",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[900]),
                            ),
                          ),
                        ),
                      ),
                      // About Button
                      Padding(
                        // padding: const EdgeInsets.fromLTRB(0, 30, 15, 10),
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "/About");
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[300]),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(10),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.fromLTRB(0, 0, 0, 0)),
                          ),
                          child: Container(
                            width: 70,
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              "About",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[900]),
                            ),
                          ),
                        ),
                      ),

                      // Services Button
                      Padding(
                        // padding: const EdgeInsets.fromLTRB(0, 30, 15, 10),
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),

                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, "/Services");
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[300]),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(10),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.fromLTRB(0, 0, 0, 0)),
                          ),
                          child: Container(
                            width: 80,
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              "Services",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[900]),
                            ),
                          ),
                        ),
                      ),

                      // Contact Button
                      Padding(
                        // padding: const EdgeInsets.fromLTRB(0, 30, 15, 10),
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "/Contact");
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                // MaterialStateProperty.all(Colors.grey[300]),
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Colors.grey[300];
                                return Colors.amber[500];
                              },
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(10),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.fromLTRB(0, 0, 0, 0)),
                          ),
                          child: Container(
                            width: 72,
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              "Contact",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[900]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.fromLTRB(20, 30, 20, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  child: Text(
                    'Contact Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        shadows: <Shadow>[
                          // Shadow effect for text
                          Shadow(
                            offset: Offset(0.0, 2.2),
                            blurRadius: 8,
                            color: Color.fromARGB(200, 0, 0, 0),
                          ),
                        ],
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.amber[500]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ElevatedButton.icon(
                        onPressed: () async {
                          await launchUrl(Uri(
                            scheme: 'mailto',
                            path: 'Khalid@alqoud.com',
                          ));
                          // print("You pressed email Button");
                        },
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.amber, width: 1),
                          alignment: Alignment.centerLeft,
                          minimumSize: Size(double.infinity, 50),
                          padding: EdgeInsets.all(0),
                          backgroundColor: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        icon: Container(
                          padding: EdgeInsets.all(9),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 3),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white),
                          child:
                              Icon(Icons.email, color: Colors.black, size: 24),
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Khalid@alqoud.com",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ), //label text
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton.icon(
                        onPressed: () async {
                          await launchUrl(Uri(
                            scheme: 'tel',
                            path: '+973 3300 6665',
                          ));
                          // print("You pressed phone Button");
                        },
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.amber, width: 1),
                          alignment: Alignment.centerLeft,
                          minimumSize: Size(double.infinity, 50),
                          padding: EdgeInsets.all(0),
                          backgroundColor: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          primary: Colors.grey[300],
                        ),
                        icon: Container(
                          padding: EdgeInsets.all(9),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 3),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white),
                          child:
                              Icon(Icons.phone, color: Colors.black, size: 24),
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "+973 3300 6665",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton.icon(
                        onPressed: () async {
                          await launchUrl(Uri(
                            scheme: 'https',
                            path:
                                'linkedin.com/in/khalid-alqoud-87596514/?originalSubdomain=bh',
                          ));
                          // print("You pressed linkedin Button");
                        },
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.amber, width: 1),
                          alignment: Alignment.centerLeft,
                          minimumSize: Size(double.infinity, 50),
                          padding: EdgeInsets.all(0),
                          backgroundColor: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          primary: Colors.grey[300],
                        ),
                        icon: Container(
                            padding: EdgeInsets.all(9),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 3),
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: Image.asset(
                              // LinkedIn Icon
                              'asset/linkedin.png',
                              width: 24,
                              height: 24,
                              fit: BoxFit.cover,
                            )),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Khalid AlQoud",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ), //label text
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton.icon(
                        onPressed: () async {
                          await launchUrl(Uri(
                            scheme: 'https',
                            path:
                                'youtube.com/channel/UCgCeL0_MVFxbyzsf1drZhZw',
                          ));
                          // print("You pressed YouTube Button");
                        },
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.amber, width: 1),
                          alignment: Alignment.centerLeft,
                          minimumSize: Size(double.infinity, 50),
                          padding: EdgeInsets.all(0),
                          backgroundColor: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          primary: Colors.grey[300],
                        ),
                        icon: Container(
                            padding: EdgeInsets.all(9),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 3),
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: Image.asset(
                              // YouTube Icon
                              'asset/youtube.png',
                              width: 24,
                              height: 24,
                              fit: BoxFit.cover,
                            )
                            // Icon(Icons.youtube_searched_for,
                            //     color: Colors.black, size: 24),
                            ),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Khalid AlQoud",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ), //label text
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton.icon(
                        onPressed: () async {
                          await launchUrl(Uri(
                            scheme: 'https',
                            path: 'facebook.com/khalid.alqoud',
                          ));
                          // print("You pressed Facebook Button");
                        },
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.amber, width: 1),
                          alignment: Alignment.centerLeft,
                          minimumSize: Size(double.infinity, 50),
                          padding: EdgeInsets.all(0),
                          backgroundColor: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          primary: Colors.grey[300],
                        ),
                        icon: Container(
                          padding: EdgeInsets.all(9),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 3),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white),
                          child: Icon(Icons.facebook,
                              color: Colors.black, size: 24),
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Khalid AlQoud",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ), //label text
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton.icon(
                        onPressed: () async {
                          await launchUrl(Uri(
                            scheme: 'https',
                            path: 'twitter.com/KhalidAlQoud',
                          ));
                          // print("You pressed Twitter Button");
                        },
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.amber, width: 1),
                          alignment: Alignment.centerLeft,
                          minimumSize: Size(double.infinity, 50),
                          padding: EdgeInsets.all(0),
                          backgroundColor: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          primary: Colors.grey[300],
                        ),
                        icon: Container(
                            padding: EdgeInsets.all(9),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 3),
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: Image.asset(
                              // Twitter Icon
                              'asset/twitter.png',
                              width: 24,
                              height: 24,
                              fit: BoxFit.cover,
                            )
                            // Icon(Icons.access_alarms,
                            //     color: Colors.black, size: 24),
                            ),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Khalid AlQoud",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ), //label text
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton.icon(
                        onPressed: () async {
                          await launchUrl(Uri(
                            scheme: 'https',
                            path: 'instagram.com/khalidalqoud/',
                          ));
                          // print("You pressed Instagram Button");
                        },
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.amber, width: 1),
                          alignment: Alignment.centerLeft,
                          minimumSize: Size(double.infinity, 50),
                          padding: EdgeInsets.all(0),
                          backgroundColor: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          primary: Colors.grey[300],
                        ),
                        icon: Container(
                            padding: EdgeInsets.all(9),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 3),
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: Image.asset(
                              // Instagram Icon
                              'asset/Instagram.png',
                              width: 24,
                              height: 24,
                              fit: BoxFit.cover,
                            )
                            // Icon(Icons.camera_alt,
                            //     color: Colors.black, size: 24),
                            ),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Khalid AlQoud",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ), //label text
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                  child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(6, 0, 0, 0),
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Address \n',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.brown[500],
                                  ),
                                ),
                                TextSpan(
                                  text: '\n', // This will act as padding.
                                  style: TextStyle(
                                    fontSize:
                                        6, // You can adjust this value as required.
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Office 225 & 226\n Seound Floor\n Al Farhan Center\n Hamala, Bahrain\n',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey[800],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(6, 0, 0, 30),
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Business Hours\n',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.brown[500],
                                    //color to rgb(109, 109, 109)
                                  ),
                                ),
                                TextSpan(
                                  text: '\n', // This will act as padding.
                                  style: TextStyle(
                                    fontSize:
                                        6, // You can adjust this value as required.
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Sunday to Thursday\n 8:00 am - 4:00 pm\n (GMT+3)',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey[800],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
