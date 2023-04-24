import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ytPlayer6 extends StatefulWidget{
  const ytPlayer6({Key? key}) : super (key: key);

  @override
  _ytPlayer6 createState() => _ytPlayer6();
}

class _ytPlayer6 extends State<ytPlayer6> {
  final videoURL = "https://www.youtube.com/watch?v=WWloIAQpMcQ";

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
                        child: Text('How to cope with anxiety | Tedx Talk',
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

                      child:Text('Exercising is one of the best coping skills for someone with GAD. No matter the form of exercise you choose,'
                          ' it will help calm your nervous system and thus reduce your anxiety. You can walk, run, practice yoga, or do any other '
                          'activity that you find enjoyable.',
                        style: TextStyle(
                          fontSize: 15,
                          height: 2,
                        ),),
                    )
                ),
                // ADD NEW TEXT FEILD
              ],
            )
        )
    );
  }
}