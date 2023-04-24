// import 'package:flutter/material.dart';
// import 'package:myserenity_fyp/video/vid_cat/cat1.dart';
// import 'package:myserenity_fyp/video/vid_cat/cat2.dart';
// import 'package:myserenity_fyp/video/vid_cat/cat3.dart';
// import 'package:myserenity_fyp/video/vid_cat/cat4.dart';
// import 'package:myserenity_fyp/video/vid_cat/cat5.dart';
//
//
// class videoPage extends StatefulWidget{
//   const videoPage({Key? key}) : super (key: key);
//
//   @override
//   State<videoPage> createState() => _videoPage();
// }
//
// class _videoPage extends State<videoPage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.blue[100],
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           elevation: 0,
//         ),
//         body: SingleChildScrollView(
//             child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 70,
//                       width: 350,
//                       child: Text('MOTI QUOTES 5'),
//                       color: Colors.deepOrangeAccent,
//                     ),
//                     Padding(
//                         padding: const EdgeInsets.only(top:40.0),
//
//                         child: Container(
//                           height: 100,
//                           width:350,
//
//                           // navi to other pages
//                           child: ElevatedButton(
//                               child: const Text('What is Generalized Anxiety Disorder (GAD)? '),
//                               onPressed: () {
//                                 Navigator.push(
//                                   context, MaterialPageRoute(
//                                     builder: (context) => VidCate1()),
//                                 );
//                               }
//                           ),
//
//                         )
//                     ),
//
//                     Padding(
//                         padding: const EdgeInsets.only(top:40.0),
//
//                         child: Container(
//                           height: 100,
//                           width:350,
//
//                           // navi to other pages
//                           child: ElevatedButton(
//                               child: const Text('What are the causes of GAD?'),
//                               onPressed: () {
//                                 Navigator.push(
//                                   context, MaterialPageRoute(
//                                     builder: (context) => VidCate2()),
//                                 );
//                               }
//                           ),
//
//                         )
//                     ),
//                     Padding(
//                         padding: const EdgeInsets.only(top:40.0),
//
//                         child: Container(
//                           height: 100,
//                           width:350,
//
//                           // navi to other pages
//                           child: ElevatedButton(
//                               child: const Text('Ways to help cope with GAD'),
//                               onPressed: () {
//                                 Navigator.push(
//                                   context, MaterialPageRoute(
//                                     builder: (context) => VidCate3()),
//                                 );
//                               }
//                           ),
//
//                         )
//                     ),
//
//                     Padding(
//                         padding: const EdgeInsets.only(top:40.0),
//
//                         child: Container(
//                           height: 100,
//                           width:350,
//
//                           // navi to other pages
//                           child: MaterialButton(
//                               child: const Text('Whats do Professionals say about GAD? '),
//                               onPressed: () {
//                                 Navigator.push(
//                                   context, MaterialPageRoute(
//                                     builder: (context) => VidCate4()),
//                                 );
//                               }
//                           ),
//
//                         )
//                     ),
//                     Padding(
//                         padding: const EdgeInsets.only(top:40.0),
//
//                         child: Container(
//                           height: 100,
//                           width:350,
//
//                           // navi to other pages
//                           child: ElevatedButton(
//                               child: const Text('Mindfulness for GAD'),
//                               onPressed: () {
//                                 Navigator.push(
//                                   context, MaterialPageRoute(
//                                     builder: (context) => VidCate5()),
//                                 );
//                               }
//                           ),
//
//                         )
//                     ),
//
//
//
//                   ],
//
//                 )
//             )
//         )
//     );
//   }
// }