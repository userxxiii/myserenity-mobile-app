
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myserenity_fyp/video/ytVids/video0.dart';
import 'package:myserenity_fyp/video/ytVids/video1.dart';
import 'package:myserenity_fyp/video/ytVids/video2.dart';


class VidCate1 extends StatefulWidget{
  const VidCate1({Key? key}) : super (key: key);

  @override
  State<VidCate1> createState() => _VidCate1();
}

class _VidCate1 extends State<VidCate1> {
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
                    height: 100,
                    width: 350,

                    child: Text('Videos on this page helps us understand '
                        'better what is Generelized Anxiety Disorder (GAD).',
                    style: GoogleFonts.bebasNeue(
                      fontSize:25,
                      //color: Colors.deepOrangeAccent,

                    ),
                    ),


                    color: Colors.blue[100],



                  ),


                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                        height: 80,
                        width: 350,



                        // navigate to other pages
                        child: ElevatedButton(
                          child: const Text('What is Generalized Anxiety Disorder (GAD)?'),

                          onPressed: (){
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=>ytPlayer()),
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
                          child: const Text('Short Film | Worried Sick.'),

                          onPressed: (){
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=>ytPlayer1()),
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
                        child: const Text('Generalized Anxiety Disorder | Khan Academy'),
                        onPressed: (){
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context)=>ytPlayer2()),
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