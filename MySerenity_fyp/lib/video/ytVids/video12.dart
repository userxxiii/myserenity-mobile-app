import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ytPlayer12 extends StatefulWidget{
  const ytPlayer12({Key? key}) : super (key: key);

  @override
  _ytPlayer12 createState() => _ytPlayer12();
}

class _ytPlayer12 extends State<ytPlayer12> {
  final videoURL = " https://www.youtube.com/watch?v=O-6f5wQXSu8";

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
                        child: Text('10-Minute Meditation',
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

                      child:Text('Anxiety is a cognitive state connected to an inability to regulate emotions. But research shows that a consistent meditation practice reprograms neural pathways in the brain and, therefore, improves our ability to regulate emotions.'
                        'Through meditation, we familiarize ourselves with anxiety-inducing thoughts and storylines. We learn to see them, sit with them, and let them go. In doing so, we learn 2 important things: thoughts do not define us, and thoughts are not real. Within this newfound perspective, we’re able to gradually change our relationship with anxiety, differentiating between what is an irrational episode and what’s true.' + "\n"
                        'Follow along with this video!',
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