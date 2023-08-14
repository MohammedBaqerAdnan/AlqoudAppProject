// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: _globalKey,
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("name"),
                  accountEmail: Text("email"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.orange[50],
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home), title: Text("Home"),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person), title: Text("About"),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/About');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings), title: Text("Services"),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/Services');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.contacts), title: Text("Contact Us"),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/Contact');
                  },
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      'asset/pic1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'asset/pic2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  width: 60,
                  height: 120,
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.fromLTRB(40, 20, 40, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  child: Text(
                    'Khalid AlQoud \n Chairman \n AlQoud Foundation',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Container(
                // color: Colors.green,
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(4, 19, 0, 0),
                        child: IconButton(
                            icon: Icon(Icons.menu),
                          onPressed: () {
                              _globalKey.currentState?.openDrawer();
                          },
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 30, 15, 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/");
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
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                            style: TextStyle(fontSize: 14, color: Colors.grey[900]),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 15, 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/About");
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.grey[300]),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                            style: TextStyle(fontSize: 14, color: Colors.grey[900]),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 15, 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/Services");
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.grey[300]),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                            style: TextStyle(fontSize: 14, color: Colors.grey[900]),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 15, 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/Contact");
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.grey[300]),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                            style: TextStyle(fontSize: 14, color: Colors.grey[900]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
