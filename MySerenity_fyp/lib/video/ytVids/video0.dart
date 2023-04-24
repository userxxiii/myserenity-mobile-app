import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ytPlayer extends StatefulWidget{
  const ytPlayer({Key? key}) : super (key: key);

  @override
  _ytPlayer createState() => _ytPlayer();
}

class _ytPlayer extends State<ytPlayer> {
  final videoURL = "https://www.youtube.com/watch?v=9mPwQTiMSj8";

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
                        child: Text('What is Generalized Anxiety Disorder?',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 25,
                          )
                        ),


                      ),


                    )

                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container (

                      //color: Colors.blue[100],
                      decoration:  BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                          )
                      ),

                      child:Text('Generalized anxiety disorder (GAD) is a mental health condition that causes fear, worry and a constant feeling'
                          ' of being overwhelmed. It’s characterized by excessive, frequent and unrealistic worry about everyday things, such as job '
                          'responsibilities, health or chores. It can affect children and adults. GAD is one of several anxiety disorders.',
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