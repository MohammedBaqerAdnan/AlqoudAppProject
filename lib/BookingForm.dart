import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class BookingForm extends StatelessWidget {
  BookingForm({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _sKey,
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
        body: Column(
          key: _formKey,
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      // padding: EdgeInsets.fromLTRB(4, 19, 0, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),

                      child: IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          _sKey.currentState?.openDrawer();
                        },
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
                  'Book Now',
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
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  labelText: 'First Name',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  labelText: 'Last Name',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  labelText: 'Email',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  labelText: 'Notes',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  labelText: 'Hours',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(
              children: <Widget>[
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                        width: 2,
                      ),
                    ),
                  ),
                  initialCountryCode: 'BH',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                    print(phone.countryCode);
                    print(phone.number);
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: SizedBox(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Submit"),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
