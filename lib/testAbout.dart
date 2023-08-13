// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';

// class Signup extends StatelessWidget {
//   const Signup({Key? key}) : super(key: key);

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
//                         height: 20,
//                       ),
//                       Text(
//                         "Sign up",
//                         style: TextStyle(
//                             fontSize: 35,
//                             fontFamily: "myfont",
//                             color: Colors.grey[800]),
//                       ),
//                       SizedBox(
//                         height: 21,
//                       ),
//                       SizedBox(
//                         height: 27,
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
//                                   horizontal: 89, vertical: 10)),
//                           shape: MaterialStateProperty.all(
//                               RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(27))),
//                         ),
//                         child: Text(
//                           "Sign up",
//                           style: TextStyle(fontSize: 24),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 33,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text("Already have an accout? "),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.pushNamed(context, "/login");
//                             },
//                             child: Text(
//                               " Log in",
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 17,
//                       ),
//                       SizedBox(
//                         width: 299,
//                         child: Row(
//                           children: [
//                             Expanded(
//                                 child: Divider(
//                               thickness: 0.6,
//                               color: Colors.purple[900],
//                             )),
//                             Text(
//                               "OR",
//                               style: TextStyle(
//                                 color: Colors.purple[900],
//                               ),
//                             ),
//                             Expanded(
//                                 child: Divider(
//                               thickness: 0.6,
//                               color: Colors.purple[900],
//                             )),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.symmetric(vertical: 27),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             GestureDetector(
//                               onTap: () {},
//                               child: Container(
//                                 padding: EdgeInsets.all(13),
//                                 decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     border: Border.all(
//                                         color: Colors.purple, width: 1)),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 22,
//                             ),
//                             GestureDetector(
//                               onTap: () {},
//                               child: Container(
//                                 padding: EdgeInsets.all(13),
//                                 decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     border: Border.all(
//                                         color: Colors.purple, width: 1)),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 22,
//                             ),
//                             GestureDetector(
//                               onTap: () {},
//                               child: Container(
//                                 padding: EdgeInsets.all(13),
//                                 decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     border: Border.all(
//                                         color: Colors.purple, width: 1)),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
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

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          // Buttons
          Container(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(4, 19, 0, 0),
                  child: Icon(Icons.menu),
                ),

                // Home Button
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 30, 15, 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/");
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

                // About Button
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

                // Services Button
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

                // Contact Button
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
          // Image
          // Expanded(
          //   child: Image.asset(
          //     'asset/pic1.jpg', // replace with your image
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
                'asset/pic1.jpg',
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
                fontWeight: FontWeight.w500,
                color: Colors.grey[800],
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Our vision and mission is to achieve sustainable growth as a local, regional and international businesses with global recognition, as well as to be a leading consultancy and services provider across private, public and social sectors.',
              // Style for the second paragraph
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Expanded(
            child: SizedBox(), // This will fill remaining space
          ),
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
                      alignment:
                          Alignment.center, // center the icon in the container
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
    ));
  }
}
