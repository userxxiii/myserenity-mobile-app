
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myserenity_fyp/chat/chatPage.dart';
import 'package:myserenity_fyp/login/forgotPassword.dart';
import 'package:myserenity_fyp/login/registerPage.dart';


class loginPage extends StatefulWidget {
  @override
  _loginPage createState() => _loginPage();
}

class _loginPage extends State<loginPage> {
  bool _isObscure3 = true;
  bool visible = false;
  final _formkey = GlobalKey<FormState>();
  final  _emailController = new TextEditingController();
  final  _passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(12),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          "MySerenity",
                          style: GoogleFonts.bebasNeue(
                            fontSize:65,
                            color:Colors.yellowAccent,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Chat.Express.Watch",
                            style: GoogleFonts.bebasNeue(
                              fontSize:25,
                              color:Colors.yellowAccent,


                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Container(
                            decoration: BoxDecoration(
                              color:Colors.white,
                              border:Border.all(color:Colors.black),
                            ),
                            child: TextFormField(
                              controller: _emailController,
                              decoration: const InputDecoration(
                                fillColor: Colors.white,
                                hintText: 'Email',
                                contentPadding: EdgeInsets.only(left:10.0),

                              ),
                              validator: (value) {
                                if (value!.length == 0) {
                                  return "Email cannot be empty";
                                }
                                if (!RegExp(
                                    "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                    .hasMatch(value)) {
                                  return ("Please enter a valid email");
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) {
                                _emailController.text = value!;
                              },
                              keyboardType: TextInputType.emailAddress,
                            ),

                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Container(
                            decoration: BoxDecoration(
                              color:Colors.white,
                              border:Border.all(color:Colors.black),
                            ),
                            child: TextFormField(
                              controller: _passwordController,
                              obscureText: _isObscure3,
                              decoration:  InputDecoration(
                                contentPadding: const EdgeInsets.only(left:10.0, top:14.0,),
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure3
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure3 = !_isObscure3;
                                      });
                                    }),
                                hintText: 'Password',
                                //contentPadding: EdgeInsets.all(5.0),

                              ),
                              validator: (value) {
                                RegExp regex = new RegExp(r'^.{6,}$');
                                if (value!.isEmpty) {
                                  return "Password cannot be empty";
                                }
                                if (!regex.hasMatch(value)) {
                                  return ("Please enter a valid password (>= 6 characters");
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) {
                                _passwordController.text = value!;
                              },
                              keyboardType: TextInputType.emailAddress,
                            ),

                          ),
                        ),
                        SizedBox(height:30),


                        MaterialButton(
                          color:Colors.green,
                          onPressed: () {
                            setState(() {
                              visible = true;
                            });
                            signIn(
                                _emailController.text, _passwordController.text);
                          },
                          child: Text(
                            "Login",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 20,

                            ),
                          ),

                        ),
                        SizedBox(height:40),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Text('Not a member?',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 25,
                                color:Colors.yellowAccent,

                              ),
                            ),
                            SizedBox(height:10),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: MaterialButton(
                                color: Colors.yellowAccent,
                                //height: 20,
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) => RegisterScreen()));
                                },
                                child: Text(
                                  "Register",
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
                  ),
                ),
              ),
            ),

            SizedBox(height:10),

            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[900],


                  ),

                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context)=>forgotPasswordPage()),//ytPlayer()),
                    );
                  },
                  child: Text(
                    "Forgot Password",
                    style: GoogleFonts.bebasNeue(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void signIn(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => chatpage(
              email: email,
            ),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }
  }
}