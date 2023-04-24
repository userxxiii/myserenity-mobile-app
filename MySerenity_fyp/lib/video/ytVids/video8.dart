import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ytPlayer8 extends StatefulWidget{
  const ytPlayer8({Key? key}) : super (key: key);

  @override
  _ytPlayer8 createState() => _ytPlayer8();
}

class _ytPlayer8 extends State<ytPlayer8> {
  final videoURL = "https://www.youtube.com/watch?v=EO9k1Y8wvkw";

  late YoutubePlayerController _ytController1;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _ytController1 = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        showLiveFullscreenButton: true,
        enableCaption: true,
        controlsVisibleAtStart: true,



      ),

    );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                YoutubePlayer(
                  controller: _ytController1,
                  showVideoProgressIndicator: true,



                  bottomActions: [
                    CurrentPosition(),
                    ProgressBar(
                        isExpanded: true,
                        colors: const ProgressBarColors(
                          playedColor: Colors.amber,
                          handleColor: Colors.amberAccent,
                        )
                    )
                  ],

                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: Center(
                      child: Container(
                        child: Text('5 Coping Skills for Anxiety',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 25,
                          )
                        ),


                      ),


                    )

                ),


                // ADD NEW TEXT FEILD
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container (

                      //color: Colors.blue[100],
                      decoration:  BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                          )
                      ),

                      child:Text('Everyone deals with some form of anxiety on a daily basis and its completely normal! In this video, '
                          'Sage Neuroscience Center therapist, Stephanie gives 5 '
                          'coping mechanisms you can use to help with your symptoms of anxiety. ',
                        style: TextStyle(
                          fontSize: 15,
                          height: 2,
                        ),),
                    )
                )
                // ADD NEW TEXT FEILD
              ],
            )
        )
    );
  }
}