// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

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
                tileColor: Colors.grey[300],
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
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                height: 385,
                width: 395,
                child: ClipRRect(
                  child: Image.asset(
                    'asset/AlQoudLogo.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 364,
                width: 393,
                child: ClipRRect(
                  child: Image.asset(
                    'asset/KhalidAlQoud.jpg',
                    fit: BoxFit.cover,
                  ),
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
              height: 90,
              padding: EdgeInsets.all(12),
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
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[900]),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    // padding: const EdgeInsets.fromLTRB(12, 30, 15, 10),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/About");
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
                          "About",
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[900]),
                        ),
                      ),
                    ),
                  ),
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
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[900]),
                        ),
                      ),
                    ),
                  ),
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
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[900]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
