
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myserenity_fyp/chat/messagingPage.dart';

import '../home/homepage.dart';


class chatpage extends StatefulWidget {
  String email;
  chatpage({required this.email});
  @override
  _chatpageState createState() => _chatpageState(email: email);
}

class _chatpageState extends State<chatpage> {
  String email;
  _chatpageState({required this.email});

  final fs = FirebaseFirestore.instance;
  //final _auth = FirebaseAuth.instance;
  final  _message = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: Text(
          'Public Chat Room',
          style: GoogleFonts.bebasNeue(
            fontSize: 30,
            color:Colors.black,
          ),
        ),

        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );

            },
            child: Text(
                "More",
                style: GoogleFonts.bebasNeue(
                  fontSize: 30,
                  color:Colors.deepOrangeAccent,


                )
            ),
          ),
        ],
      ),









      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.79,
              child: messages(
                email: email,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _message,
                    decoration: InputDecoration(
                      //filled: true,
                      fillColor: Colors.white,
                      hintText: 'Send a Message!',
                      enabled: true,
                      contentPadding: const EdgeInsets.only(
                           left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black),
                        borderRadius: new BorderRadius.circular(10),
                      ),
                       enabledBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black),
                        borderRadius: new BorderRadius.circular(10),
                       ),
                    ),
                    validator: (value) {},
                    onSaved: (value) {
                      _message.text = value!;
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (_message.text.isNotEmpty) {
                      fs.collection('Messages').doc().set({
                        'message': _message.text.trim(),
                        'time': DateTime.now(),
                        'email': email,
                      });

                      _message.clear();
                    }
                  },
                  icon: Icon(Icons.send_sharp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}