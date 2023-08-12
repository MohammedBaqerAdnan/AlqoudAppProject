// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';

// class Welcome extends StatelessWidget {
//   const Welcome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               SizedBox(
//                 width: double.infinity,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: 35,
//                     ),
//                     Text(
//                       "Welcome",
//                       style: TextStyle(fontSize: 33, fontFamily: "myfont"),
//                     ),
//                     SizedBox(
//                       height: 35,
//                     ),
//                     SizedBox(
//                       height: 35,
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, "/login");
//                       },
//                       style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all(Colors.purple),
//                         padding: MaterialStateProperty.all(
//                             EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
//                         shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(27))),
//                       ),
//                       child: Text(
//                         "login",
//                         style: TextStyle(fontSize: 24),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 22,
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, "/signup");
//                       },
//                       style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all(Colors.purple[100]),
//                         padding: MaterialStateProperty.all(
//                             EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
//                         shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(27))),
//                       ),
//                       child: Text(
//                         "SIGNUP",
//                         style: TextStyle(fontSize: 17, color: Colors.grey[850]),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 left: 0,
//                 child: Image.asset(
//                   "assets/images/main_top.png",
//                   width: 111,
//                 ),
//               ),
//               Positioned(
//                 bottom: 0,
//                 child: Image.asset(
//                   "assets/images/main_bottom.png",
//                   width: 111,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Services(),
    );
  }
}

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
