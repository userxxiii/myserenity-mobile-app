import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ytPlayer2 extends StatefulWidget{
  const ytPlayer2 ({Key? key}) : super (key: key);

  @override
  _ytPlayer2 createState() => _ytPlayer2();
}

class _ytPlayer2 extends State<ytPlayer2> {
  final videoURL = "https://www.youtube.com/watch?v=8KjWbjhb89o";

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
                        child: Text('Khan Academy | Generalized Anxiety Disorder',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 25,
                          ),
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

                      child:Text('Amygdala is the organ in the brain responsible for processing fears and anxiety,'
                        'In generalized anxiety disorder, there is abnormal neuronal connectivity of the amygdala from the basolateral complex.'
                        'This leads to exaggerated nervousness and tension.',
                        style: TextStyle(
                          fontSize: 15,
                          height: 2,
                        ),),
                    )
                )

                // ADD NEW TEXT FEILD

                // ADD NEW TEXT FEILD
              ],
            )
        )
    );
  }
}