import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ytPlayer5 extends StatefulWidget{
  const ytPlayer5({Key? key}) : super (key: key);

  @override
  _ytPlayer5 createState() => _ytPlayer5();
}

class _ytPlayer5 extends State<ytPlayer5> {
  final videoURL = "https://www.youtube.com/watch?v=4WJS0O1llUo";

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
                        child: Text('Symptoms of GAD in Children and Teens.',
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

                      child:Text('Generalized Anxiety Disorder (GAD) is an anxiety disorder. Children and teens with generalized anxiety disorder (GAD) experience excessive and uncontrollable worry about future events and minor matters. This can include worry about health of self and family, money matters, the environment, state of affairs at a local, country or global level, parents’ marital satisfaction or family stability, academic or athletic performance, punctuality, and more. Worry is considered excessive and uncontrollable when your child is worrying more than his or her peers, and if he or she cannot stop worrying once it has started. This worry occurs most days and is accompanied by at least three or more physical symptoms such as'
                          ' fatigue, feeling amped up, trouble concentrating, irritability, muscle tension, and sleep difficulties.',
                        style: TextStyle(
                          fontSize: 15,
                          height: 2,
                        ),),
                    )
                ),

                // ADD NEW TEXT FEILD

                // ADD NEW TEXT FEILD
              ],
            )
        )
    );
  }
}