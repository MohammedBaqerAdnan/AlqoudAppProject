// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class About extends StatelessWidget {
  About({Key? key}) : super(key: key);

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
          children: [
            // Buttons
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

                    // Home Button
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                              // MaterialStateProperty.all(Colors.grey[300]),
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Colors.grey[300];
                              return Colors.amber[500];
                            },
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          Navigator.pushReplacementNamed(context, "/Services");
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey[300]),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                              MaterialStateProperty.all(Colors.grey[300]),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
            //   ),
            // ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              height: 275,
              width: 210,
              child: ClipRRect(
                //Rounds the corners of the image
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'asset/pic2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300],
                ),
                child: Text(
                  'About AlQoud Foundation',
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
                      color: Colors.amber[
                          500]), // fontWeight: FontWeight.w700, color: Colors.grey[800]
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Text(
                'The AlQoud Foundation encompasses a variety of services, such as Business Plan Consultation, Global Networking Services, Workshops, Internship Services, etc.',
                // Style for the first paragraph
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[800],
                  wordSpacing: 1,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Our vision and mission is to achieve sustainable growth as a local, regional and international businesses with global recognition, as well as to be a leading consultancy and services provider across private, public and social sectors.',
                // Style for the second paragraph
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[800],
                    wordSpacing: 1),
                textAlign: TextAlign.start,
              ),
            ),
            // Expanded(
            //   child: SizedBox(), // This will fill remaining space
            // ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Text(
                    '© 2023 AlQoud Foundation',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 10), // Provide some vertical spacing
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height:
                            34, // change the height here to match the size of the icon
                        width: 34, // change the width
                        alignment: Alignment
                            .center, // center the icon in the container
                        child: IconButton(
                          padding: EdgeInsets.all(0),
                          icon: Icon(
                            Icons.facebook,
                            size: 32,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 10), // for some spacing
                      Container(
                        height:
                            34, // Let's make this height same as Facebook icon's container height for alignment
                        width: 34, // Same width for consistency
                        child: IconButton(
                          padding: EdgeInsets.all(0),
                          icon: SvgPicture.asset('asset/linkedin.svg',
                              height: 24, width: 24, color: Colors.blue),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 10), // for some spacing
                      Container(
                        height: 34, // Same as others
                        width: 34, // Same as others
                        child: IconButton(
                          padding: EdgeInsets.all(0),
                          icon: SvgPicture.asset('asset/twitter.svg',
                              height: 24, width: 24, color: Colors.blue),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10), // space from the bottom edge of the screen
          ],
        ),
      ),
    ));
  }
}
