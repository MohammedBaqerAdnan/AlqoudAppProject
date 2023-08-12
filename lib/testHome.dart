// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// import 'package:flutter/material.dart';

// class Login extends StatelessWidget {
//   const Login({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           body: SafeArea(
//         child: Scaffold(
//           body: SizedBox(
//             height: double.infinity,
//             width: double.infinity,
//             child: Stack(
//               children: [
//                 SizedBox(
//                   width: double.infinity,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         height: 35,
//                       ),
//                       Text(
//                         "Log in",
//                         style: TextStyle(fontSize: 33, fontFamily: "myfont"),
//                       ),
//                       SizedBox(
//                         height: 35,
//                       ),
//                       SizedBox(
//                         height: 35,
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.purple[100],
//                           borderRadius: BorderRadius.circular(66),
//                         ),
//                         width: 266,
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: TextField(
//                           decoration: InputDecoration(
//                               icon: Icon(
//                                 Icons.person,
//                                 color: Colors.purple[800],
//                               ),
//                               hintText: "Your Email :",
//                               border: InputBorder.none),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 23,
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.purple[100],
//                           borderRadius: BorderRadius.circular(66),
//                         ),
//                         width: 266,
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: TextField(
//                           obscureText: true,
//                           decoration: InputDecoration(
//                               suffix: Icon(
//                                 Icons.visibility,
//                                 color: Colors.purple[900],
//                               ),
//                               icon: Icon(
//                                 Icons.lock,
//                                 color: Colors.purple[800],
//                                 size: 19,
//                               ),
//                               hintText: "Password :",
//                               border: InputBorder.none),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 17,
//                       ),
//                       ElevatedButton(
//                         onPressed: () {},
//                         style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.purple),
//                           padding: MaterialStateProperty.all(
//                               EdgeInsets.symmetric(
//                                   horizontal: 106, vertical: 10)),
//                           shape: MaterialStateProperty.all(
//                               RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(27))),
//                         ),
//                         child: Text(
//                           "login",
//                           style: TextStyle(fontSize: 24),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 17,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text("Don't have an accout? "),
//                           GestureDetector(
//                               onTap: () {
//                                 Navigator.pushNamed(context, "/signup");
//                               },
//                               child: Text(
//                                 " Sign up",
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               )),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   left: 0,
//                   child: Image.asset(
//                     "assets/images/main_top.png",
//                     width: 111,
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   right: 0,
//                   child: Image.asset(
//                     "assets/images/login_bottom.png",
//                     width: 111,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       )),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                    child: Icon(Icons.menu)),

                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, "/Home");
                //   },
                //   child: Container(
                //     decoration: BoxDecoration(
                //       color: Colors.grey[300],
                //       borderRadius: BorderRadius.circular(20),
                //     ),
                //     width: 70,
                //     height: 40,
                //     margin: EdgeInsets.fromLTRB(12, 30, 15, 10),
                //     child: Center(
                //       child: Text("Home",
                //           style: TextStyle(fontSize: 14, color: Colors.grey[900])),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 30, 15, 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/");
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
                      Navigator.pushNamed(context, "/About");
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
                      Navigator.pushNamed(context, "/Services");
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
                      Navigator.pushNamed(context, "/Contact");
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

                // Container(
                //     decoration: BoxDecoration(
                //       color: Colors.grey[300],
                //       borderRadius: BorderRadius.circular(20),
                //     ),
                //     width: 70,
                //     height: 40,
                //     margin: EdgeInsets.fromLTRB(0, 30, 15, 10),
                //     child: Center(
                //       child: Text("About",
                //           style: TextStyle(fontSize: 14, color: Colors.grey[900])),
                //     )),
                // Container(
                //   decoration: BoxDecoration(
                //     color: Colors.grey[300],
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                //   width: 79,
                //   height: 40,
                //   margin: EdgeInsets.fromLTRB(0, 30, 15, 10),
                //   child: Center(
                //     child: Text("Services",
                //         style: TextStyle(fontSize: 14, color: Colors.grey[900])),
                //   ),
                // ),
                // Container(
                //     decoration: BoxDecoration(
                //       color: Colors.grey[300],
                //       borderRadius: BorderRadius.circular(20),
                //     ),
                //     width: 73,
                //     height: 40,
                //     margin: EdgeInsets.fromLTRB(0, 30, 15, 10),
                //     child: Center(
                //       child: Text("Contact",
                //           style: TextStyle(fontSize: 14, color: Colors.grey[900])),
                //     )),
                // Container(
                //   width: 100,
                //   height: double.infinity,
                //   color: Colors.blue,
                // ),
                // Container(
                //   width: 100,
                //   height: double.infinity,
                //   color: Colors.green,
                // ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}










// complete home 




// ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Expanded(
//                 child: Image.asset(
//                   'asset/pic1.jpg',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Expanded(
//                 child: Image.asset(
//                   'asset/pic2.jpg',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ],
//           ),
//           Positioned(
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: Container(
//               width: 60,
//               height: 120,
//               padding: EdgeInsets.all(25),
//               margin: EdgeInsets.fromLTRB(40, 20, 40, 20),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.grey[300],
//               ),
//               child: Text(
//                 'Khalid AlQoud \n Chairman \n AlQoud Foundation',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 18),
//               ),
//             ),
//           ),
//           Container(
//             // color: Colors.green,
//             child: Row(
//               children: [
//                 Padding(
//                     padding: EdgeInsets.fromLTRB(4, 19, 0, 0),
//                     child: Icon(Icons.menu)),
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(12, 30, 15, 10),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushReplacementNamed(context, "/");
//                     },
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all(Colors.grey[300]),
//                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                         RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                       ),
//                       elevation: MaterialStateProperty.all(10),
//                       padding: MaterialStateProperty.all(
//                           EdgeInsets.fromLTRB(0, 0, 0, 0)),
//                     ),
//                     child: Container(
//                       width: 70,
//                       height: 40,
//                       alignment: Alignment.center,
//                       child: Text(
//                         "Home",
//                         style: TextStyle(fontSize: 14, color: Colors.grey[900]),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(0, 30, 15, 10),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushReplacementNamed(context, "/About");
//                     },
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all(Colors.grey[300]),
//                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                         RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                       ),
//                       elevation: MaterialStateProperty.all(10),
//                       padding: MaterialStateProperty.all(
//                           EdgeInsets.fromLTRB(0, 0, 0, 0)),
//                     ),
//                     child: Container(
//                       width: 70,
//                       height: 40,
//                       alignment: Alignment.center,
//                       child: Text(
//                         "About",
//                         style: TextStyle(fontSize: 14, color: Colors.grey[900]),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(0, 30, 15, 10),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushReplacementNamed(context, "/Services");
//                     },
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all(Colors.grey[300]),
//                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                         RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                       ),
//                       elevation: MaterialStateProperty.all(10),
//                       padding: MaterialStateProperty.all(
//                           EdgeInsets.fromLTRB(0, 0, 0, 0)),
//                     ),
//                     child: Container(
//                       width: 80,
//                       height: 40,
//                       alignment: Alignment.center,
//                       child: Text(
//                         "Services",
//                         style: TextStyle(fontSize: 14, color: Colors.grey[900]),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(0, 30, 15, 10),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushReplacementNamed(context, "/Contact");
//                     },
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all(Colors.grey[300]),
//                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                         RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                       ),
//                       elevation: MaterialStateProperty.all(10),
//                       padding: MaterialStateProperty.all(
//                           EdgeInsets.fromLTRB(0, 0, 0, 0)),
//                     ),
//                     child: Container(
//                       width: 72,
//                       height: 40,
//                       alignment: Alignment.center,
//                       child: Text(
//                         "Contact",
//                         style: TextStyle(fontSize: 14, color: Colors.grey[900]),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
// }
