import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  Services({super.key});

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
                  margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  child: Text(
                    'Hire a Service',
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Wrap(
                    alignment: WrapAlignment.spaceAround,
                    spacing: 35.0, // gap between widgets
                    runSpacing: 20.0, // gap between lines
                    children: <Widget>[
                      Column(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            //child: ElevatedButton(
                            //onPressed: (){
                            //Navigator.pushReplacementNamed(context, "/BusinessPlanConsultService");
                            //}
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/BusinessPlanConsultService");
                                // print('Business Plan tapped!');
                              },
                              child: Container(
                                width: 130,
                                height: 130,
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset(
                                    'asset/BusinessPlanConsultation.png',
                                    color: Colors.black,
                                    fit: BoxFit.contain),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text('Business Plan \n Consultation',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/InternshipService");
                                // print('Internship tapped!');
                              },
                              child: Container(
                                width: 130,
                                height: 130,
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset('asset/Internship.png',
                                    color: Colors.black, fit: BoxFit.contain),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text('Internship',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/Workshops");
                                // print('Workshops tapped!');
                              },
                              child: Container(
                                width: 130,
                                height: 130,
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset('asset/Workshops.png',
                                    color: Colors.black, fit: BoxFit.contain),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text('Workshops',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/CateringService");
                                // print('Catering tapped!');
                              },
                              child: Container(
                                width: 130,
                                height: 130,
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset('asset/Catering.png',
                                    color: Colors.black, fit: BoxFit.contain),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text(
                              'Catering',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/EventManagementService");
                                // print('Event Management tapped!');
                              },
                              child: Container(
                                width: 130,
                                height: 130,
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset('asset/EventManagement.png',
                                    color: Colors.black, fit: BoxFit.contain),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text('Event Management',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/CoachingService");
                                // print('Coaching tapped!');
                              },
                              child: Container(
                                width: 130,
                                height: 130,
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset('asset/Coaching.png',
                                    color: Colors.black, fit: BoxFit.contain),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text('Coaching',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
