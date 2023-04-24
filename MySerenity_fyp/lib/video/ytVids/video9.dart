import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ytPlayer9 extends StatefulWidget{
  const ytPlayer9({Key? key}) : super (key: key);

  @override
  _ytPlayer9 createState() => _ytPlayer9();
}

class _ytPlayer9 extends State<ytPlayer9> {
  final videoURL = "https://www.youtube.com/watch?v=D3pKxUugQ0s";

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
                        child: Text('Living with Generalized Anxiety Disorder',
                          style: GoogleFonts.bebasNeue(
                            fontSize:25,
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

                      child:Text('GAD usually involves a persistent feeling of anxiety or dread that interferes with how you live your life. It is not the same as occasionally worrying about'
                          ' things or experiencing anxiety due to stressful life events. People living with GAD experience frequent anxiety for months, if not years',
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