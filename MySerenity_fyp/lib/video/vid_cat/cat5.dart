import 'package:google_fonts/google_fonts.dart';

import 'package:myserenity_fyp/video/ytVids/video12.dart';
import 'package:myserenity_fyp/video/ytVids/video13.dart';
import 'package:myserenity_fyp/video/ytVids/video14.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class VidCate5 extends StatefulWidget{
  const VidCate5({Key? key}) : super (key: key);

  @override
  State<VidCate5> createState() => _VidCate5();
}

class _VidCate5 extends State<VidCate5> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.blue[100],
        appBar: AppBar(


          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: 350,

                    child: Text('Videos on this page contains mindfulness '
                        'exercise videos that you can perform.',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 25,
                    ),),


                    color: Colors.blue[100],



                  ),


                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                        height: 80,
                        width: 350,



                        // navigate to other pages
                        child: ElevatedButton(
                          child: const Text('10-Minute Meditation'),

                          onPressed: (){
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=>ytPlayer12()),
                            );
                          },


                        )
                      // navigate to other pages



                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                        height: 80,
                        width: 350,
                        color: Colors.green,

                        // navigate to other pages
                        child: ElevatedButton(
                          child: const Text('Meditation | Body Scan'),

                          onPressed: (){
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=>ytPlayer13()),
                            );
                          },


                        )
                      // navigate to other pages



                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                      height: 80,
                      width: 350,
                      // navigate to other pages
                      child: ElevatedButton(
                        child: const Text('Japanese Technique | Jin Shin Jyutsu'),
                        onPressed: (){
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context)=>ytPlayer14()),
                          );
                        },


                      ),
                    ),
                  ),
                  SizedBox(height:20),
                  Text('Videos are taken from YouTube',
                    style: GoogleFonts.bebasNeue(
                      fontSize:15,
                      color:Colors.red,
                    ),),

                ],
              ),
            )
        )
    );
  }
}