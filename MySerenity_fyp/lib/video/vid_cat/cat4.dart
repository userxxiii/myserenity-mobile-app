import 'package:google_fonts/google_fonts.dart';
import 'package:myserenity_fyp/video/ytVids/video9.dart';
import 'package:myserenity_fyp/video/ytVids/video10.dart';
import 'package:myserenity_fyp/video/ytVids/video11.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class VidCate4 extends StatefulWidget{
  const VidCate4({Key? key}) : super (key: key);

  @override
  State<VidCate4> createState() => _VidCate4();
}

class _VidCate4 extends State<VidCate4> {
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

                    child: Text('Videos on this page tells us what do professionals think and say about GAD.',
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
                          child: const Text('Living with Generalized Anxiety Disorder'),

                          onPressed: (){
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=>ytPlayer9()),
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
                          child: const Text('Life with Generalized Anxiety Disorder'),

                          onPressed: (){
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=>ytPlayer10()),
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
                        child: const Text('Kristen Bell | A Talk '),
                        onPressed: (){
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context)=>ytPlayer11()),
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