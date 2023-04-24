import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ytPlayer13 extends StatefulWidget{
  const ytPlayer13({Key? key}) : super (key: key);

  @override
  _ytPlayer13 createState() => _ytPlayer13();
}

class _ytPlayer13 extends State<ytPlayer13> {
  final videoURL = " https://www.youtube.com/watch?v=bLpChrgS0AY";

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
                        child: Text('Meditation | Body Scan',
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

                      child:Text('Body scan meditation is a practice in which you pay attention to sensations happening in your body. During a body scan, you mentally scan over every part of your body from your head to your toes.'

                        'Sensations are anything that you feel and notice in the body, like tingling, cramping, tightness, heat, coolness, buzzing, pulsing, itching, throbbing or numbness.' +"\n"
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