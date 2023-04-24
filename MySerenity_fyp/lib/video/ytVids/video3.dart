import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ytPlayer3 extends StatefulWidget{
  const ytPlayer3({Key? key}) : super (key: key);

  @override
  _ytPlayer3 createState() => _ytPlayer3();
}

class _ytPlayer3 extends State<ytPlayer3> {
  final videoURL = "https://www.youtube.com/watch?v=n4gIMnU8E8U";

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
                        child: Text('Symptoms and Causes of Generalized Anxiety Disorder',
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
                            color: Colors.black,
                          )
                      ),

                      child:Text('Symptoms' + "\n"
                          '1. Uncontrollable worry and nervousness. ' + "\n"
                          '2. Getting easily startled. ' + "\n"
                        '3. Trouble sleeping ' + "\n"
                        '4. Amnesia'+ "\n"
                        '5.Inability to concentrate '+ "\n"
                        '6. Indecisiveness' + "\n"
                        '7. Irritability' + "\n"
                        '8. Heart palpitations'+ "\n"
                        '9. Restlessness' + "\n"
                        '10. Nausea' + "\n"
                        "Source: Dr. Abhimanyu Chandak",
                        style: TextStyle(
                          fontSize: 15,
                          height: 2,
                        ),),
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

                      child:Text('Causes' + "\n"
                          '1. Genetic predisposition ' + "\n"
                          '2. Abnormal functioning of certain pathways in the brain ' + "\n"
                          '3. Drug induced: prolonged use of benzodiazepines and alcohol dependence' + "\n"
                          '4. Traumatic and stressful events'+ "\n"
                          "Source: Dr. Abhimanyu Chandak" + "\n"
                        '"The exact causes are unknown, but these are the possible triggering factors"',
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