
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myserenity_fyp/login/loginPage.dart';
import 'package:myserenity_fyp/video/vid_cat/cat1.dart';
import 'package:myserenity_fyp/video/vid_cat/cat2.dart';
import 'package:myserenity_fyp/video/vid_cat/cat3.dart';
import 'package:myserenity_fyp/video/vid_cat/cat4.dart';
import 'package:myserenity_fyp/video/vid_cat/cat5.dart';
import 'package:myserenity_fyp/video/videoPage.dart';


class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super (key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  // Used to display the email of the current user on the homepage
  final user = FirebaseAuth.instance.currentUser;
  // _auth signs out the user from their account
  final _auth = FirebaseAuth.instance;






  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text (
            "Hi, " + user!.email!+"!",
            style: GoogleFonts.bebasNeue(
              fontSize: 22,
              color:Colors.black,
            ),

          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                _auth.signOut().whenComplete(() {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => loginPage(),
                    ),
                  );
                });
              },
              child: Text(
                "Sign Out",
                style: GoogleFonts.bebasNeue(
                  fontSize: 20,
                  color:Colors.red[900],

                ),
              ),


            ),

          ],

          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                    ),
                    height: 200,
                    width: 350,
                    //color: Colors.blue[100],
                    child: Column(
                      children: [
                        SizedBox(height:10),
                        Icon(Icons.info),
                        SizedBox(height:10),
                        Text('What is MySerenity?',
                            style: GoogleFonts.bebasNeue(
                              fontSize: 25,
                            )

                        ),
                        SizedBox(height:10),
                        Text('MySerenity is an mobile application development to help people with Generalized Anxiety Disorder' + "\n"
                        'Come express your thoughts and feelings in our chat room and mingle others.' + "\n"
                          'Or watch our collections of videos categorized into different topics.',
                          style: GoogleFonts.bebasNeue(
                            fontSize:20,
                          ),
                          textAlign: TextAlign.center,
                        ),


                      ],
                    ),
                  ),

                  SizedBox(height:20),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                        decoration:  BoxDecoration(
                          image:  DecorationImage(
                            image:  AssetImage("assets/gad.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: 120,
                        width: 350,


                        //navigate to other pages
                        child: MaterialButton(
                          onPressed: (){
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=>VidCate1()),//ytPlayer()),
                            );
                          },


                        )



                    ),
                  ),

                  SizedBox(height:20),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                        decoration:  BoxDecoration(
                          image:  DecorationImage(
                            image:  AssetImage("assets/gad2.jpeg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: 120,
                        width: 350,


                        //navigate to other pages
                        child: MaterialButton(
                          child: Text('What are the causes and symptoms of GAD?',
                            style: GoogleFonts.bebasNeue(
                              fontSize: 25,
                              color:Colors.black,

                            ),),



                          onPressed: (){
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=>VidCate2()),//ytPlayer()),
                            );
                          },


                        )



                    ),
                  ),
                  SizedBox(height:20),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                        decoration:  BoxDecoration(
                          image:  DecorationImage(
                            image:  AssetImage("assets/coping.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: 120,
                        width: 350,


                        //navigate to other pages
                        child: MaterialButton(
                          // child: Text('Ways to help cope with GAD',
                          //   style: GoogleFonts.bebasNeue(
                          //     fontSize: 25,
                          //     color:Colors.black,
                          //
                          //   ),),



                          onPressed: (){
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=>VidCate3()),//ytPlayer()),
                            );
                          },


                        )



                    ),
                  ),
                  SizedBox(height:20),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                        decoration:  BoxDecoration(
                          image:  DecorationImage(
                            image:  AssetImage("assets/therapy.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: 120,
                        width: 350,


                        //navigate to other pages
                        child: MaterialButton(
                          child: Text('What do Professionals say about GAD?',
                            style: GoogleFonts.bebasNeue(
                              fontSize: 20,
                              color:Colors.black,

                            ),),



                          onPressed: (){
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=>VidCate4()),//ytPlayer()),
                            );
                          },


                        )



                    ),
                  ),
                  SizedBox(height:20),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                      decoration:  BoxDecoration(
                        image:  DecorationImage(
                            image:  AssetImage("assets/mindfulness.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      height: 120,
                        width: 350,


                        //navigate to other pages
                        child: MaterialButton(
                          child:  Text('Mindfulness Exercises for GAD',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 25,
                                color:Colors.black,

                              ),
                          ),



                          onPressed: (){
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=>VidCate5()),//ytPlayer()),
                            );
                          },


                        )



                    ),
                  ),


                ],
              ),
            )
        )
    );
  }
}