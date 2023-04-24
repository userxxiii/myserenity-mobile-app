
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myserenity_fyp/login/loginPage.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final auth = FirebaseAuth.instance;
  CollectionReference ref = FirebaseFirestore.instance.collection('user');

  final  _passwordController = new TextEditingController();
  final  _confirmpassController = new TextEditingController();
  final  _emailController = new TextEditingController();

  var error= null;

  //var error = null;

  register(String email, String password) async {
    await auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .whenComplete(() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginPage()));
    });

  }

  // Object confirmpassController() {
  //   if (_passwordController.text.trim() ==
  //       _confirmpassController.text.trim()
  //   ) {
  //     return true;
  //   } else {
  //     return Text('Error');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text('Welcome to MySerenity!',
                style: GoogleFonts.bebasNeue(
                  color:Colors.yellowAccent,
                  fontSize: 40,
                ),),
              SizedBox(height:20),

              Text('Register below with your details ',
                style: GoogleFonts.bebasNeue(
                  color:Colors.yellowAccent,
                  fontSize: 25,
                ),),
              SizedBox(height:30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color:Colors.grey,
                    border:Border.all(color:Colors.black),

                  ),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email',

                    ),
                  ),

                ),
              ),








              SizedBox(height:10),

              Text('*Please enter the correct e-mail format(@)',
                  style: TextStyle(color:Colors.red,
                    fontSize: 15,)),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color:Colors.grey,
                    border:Border.all(color:Colors.black),
                  ),
                  child: TextField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                    ),
                  ),

                ),
              ),

              SizedBox(height:10),

              Text('*Password must be more than 6 characters',
                  style: TextStyle(color:Colors.red,
                    fontSize: 15,)),



              SizedBox(height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child:Container(
                  decoration: BoxDecoration(
                    color: Colors.white,

                    border: Border.all(color: Colors.black),
                  ),
                  child: TextField(
                    controller: _confirmpassController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      contentPadding: EdgeInsets.only(left:10.0),
                    ),
                    onChanged: (value) {
                      if (_confirmpassController.text != _passwordController.text) {
                        setState(() {
                          error = 'error';
                        });
                      } else {
                        setState(() {
                          error = null;
                        });
                      }
                    },
                  ),

                ),

              ),

              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  MaterialButton(
                    color: Colors.yellowAccent,
                    //height: 40,
                    onPressed: () {
                      register(_emailController.text, _passwordController.text);
                    },
                    child: Text(
                      "Register",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 20,
                      ),
                    ),

                  ),
                  SizedBox(height:40,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text('Already a member?',
                        style: GoogleFonts.bebasNeue(
                          fontSize: 25,
                          color:Colors.yellowAccent,

                        ),
                      ),
                      SizedBox(height:10),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: MaterialButton(
                          color: Colors.green,
                          //height: 20,
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => loginPage()));
                          },
                          child: Text(
                            "Login",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 20,
                            ),
                          ),

                        ),
                      ),

                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}