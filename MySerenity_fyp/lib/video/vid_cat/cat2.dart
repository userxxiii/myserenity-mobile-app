
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myserenity_fyp/video/ytVids/video3.dart';
import 'package:myserenity_fyp/video/ytVids/video4.dart';
import 'package:myserenity_fyp/video/ytVids/video5.dart';


class VidCate2 extends StatefulWidget{
  const VidCate2({Key? key}) : super (key: key);

  @override
  State<VidCate2> createState() => _VidCate2();
}

class _VidCate2 extends State<VidCate2> {
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

                    child: Text('Videos on this page helps us '
                        'understand better what are the causes and '
                        'symptoms of  Generelized Anxiety Disorder (GAD).',
                    style: GoogleFonts.bebasNeue(
                      fontSize:25,
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
                          child: const Text('Symptoms and Causes of Generalized Anxiety Disorder'),

                          onPressed: (){
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=>ytPlayer3()),
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
                        child: const Text('Symptoms of GAD in Children and Teens.'),
                        onPressed: (){
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context)=>ytPlayer5()),
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