import 'package:google_fonts/google_fonts.dart';
import 'package:myserenity_fyp/video/ytVids/video6.dart';
import 'package:myserenity_fyp/video/ytVids/video7.dart';
import 'package:myserenity_fyp/video/ytVids/video8.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class VidCate3 extends StatefulWidget{
  const VidCate3({Key? key}) : super (key: key);

  @override
  State<VidCate3> createState() => _VidCate3();
}

class _VidCate3 extends State<VidCate3> {
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

                    child: Text('Videos on this page helps us understand '
                        'better on the ways to help you cope with GAD.',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 25,

                    )),


                    color: Colors.blue[100],



                  ),


                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                        height: 80,
                        width: 350,



                        // navigate to other pages
                        child: ElevatedButton(
                          child: const Text('How to cope with Anxiety | Tedx Talk'),

                          onPressed: (){
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=>ytPlayer6()),
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
                        child: const Text('Coping Techniques'),
                        onPressed: (){
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context)=>ytPlayer8()),
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