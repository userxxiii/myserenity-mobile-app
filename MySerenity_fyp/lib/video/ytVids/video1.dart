import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ytPlayer1 extends StatefulWidget{
  const ytPlayer1({Key? key}) : super (key: key);

  @override
  _ytPlayer1 createState() => _ytPlayer1();
}

class _ytPlayer1 extends State<ytPlayer1> {
  final videoURL = "https://www.youtube.com/watch?v=3mOkkCkajsI";

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
                        child: Text('Worried Sick | All About Generalized Anxiety Disorder.',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 25,
                          ),
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

                      child:Text('2-5% of the adult population in the world suffer from Generalised '
                          'Anxiety Disorder (GAD) at some time in their lifetime. '
                          'The essential feature of GAD is a general feeling of excessive '
                          'anxiety and worry that is difficult to control. These feelings '
                          'are not related to any specific event or object but may be about a '
                          'number of events and activities. They are often accompanied by other '
                          'symptoms like restlessness, fatigue, irritability, or disturbed sleep. '
                          'GAD can be chronic and recurrent in nature, impair family life, and '
                          'reduces social adjustment and functioning. Typically, GAD develops over '
                          'a period of time and may not be noticed until it is significant enough to'
                          ' cause problems with functioning anxiety.',
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