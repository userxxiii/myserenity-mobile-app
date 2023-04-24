// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//
// class ytPlayer7 extends StatefulWidget{
//   const ytPlayer7({Key? key}) : super (key: key);
//
//   @override
//   _ytPlayer7 createState() => _ytPlayer7();
// }
//
// class _ytPlayer7 extends State<ytPlayer7> {
//   final videoURL = "https://www.youtube.com/watch?v=4WJS0O1llUo";
//
//   late YoutubePlayerController _ytController1;
//
//   @override
//   void initState() {
//     final videoID = YoutubePlayer.convertUrlToId(videoURL);
//     _ytController1 = YoutubePlayerController(
//       initialVideoId: videoID!,
//       flags: const YoutubePlayerFlags(
//         autoPlay: false,
//         showLiveFullscreenButton: true,
//         enableCaption: true,
//         controlsVisibleAtStart: true,
//
//
//
//       ),
//
//     );
//     super.initState();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           elevation: 0,
//         ),
//         body: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 YoutubePlayer(
//                   controller: _ytController1,
//                   showVideoProgressIndicator: true,
//
//
//
//                   bottomActions: [
//                     CurrentPosition(),
//                     ProgressBar(
//                         isExpanded: true,
//                         colors: const ProgressBarColors(
//                           playedColor: Colors.amber,
//                           handleColor: Colors.amberAccent,
//                         )
//                     )
//                   ],
//
//                 ),
//                 Padding(
//                     padding: const EdgeInsets.all(8.0),
//
//                     child: Center(
//                       child: Container(
//                         child: Text('dfdfdfd',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//
//
//                       ),
//
//
//                     )
//
//                 ),
//                 Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container (
//                       child:Text('sdfsdfsdfsd',
//                         style: TextStyle(
//                           fontSize: 15,
//                         ),),
//                     )
//                 ),
//
//                 // ADD NEW TEXT FEILD
//                 Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container (
//                       child:Text('sdfsdfsdfsd'),
//                     )
//                 ),
//                 // ADD NEW TEXT FEILD
//               ],
//             )
//         )
//     );
//   }
// }