// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("My page"),
        ),
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           
          children: const [
            CircleAvatar(
              radius: 50.0,
              foregroundImage: AssetImage('images/profile.png'),
              backgroundColor: Colors.red ,
            ),
            Text('Merve Nur Çalık',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize:40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )
            ),
            Text('FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'SourceSans3',
                fontSize:24.0,
                letterSpacing: 2,
                color: Color.fromARGB(255, 137, 203, 197),
                fontWeight: FontWeight.w400,
              )
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Color.fromARGB(255, 137, 203, 197),
              ),
            ),
            Card(
              color: Colors.white54,
              margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  size:40.0,
                  color: Colors.teal,
                ),
                title: Text(
                  '+90-533-257-41-98',
                  style: TextStyle(
                    fontFamily: 'SourceSans3',
                    fontSize: 20,
                  ),
                  )
              )
              
            ),
            Card(
              color: Colors.white54,
              margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email_outlined,
                  color: Colors.teal,
                  size:40.0,
                ),
                title: Text(
                  'merve.n.clk@gmail.com',
                  style: TextStyle(
                    fontFamily: 'SourceSans3',
                    fontSize: 20,
                  ),
                  )
              ),
              
            )
          ],
        ),
      ),
    );
  }
}




/* Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.red,
              width:100.0,
              height: double.infinity,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.yellow,
                  width:100.0,
                  height: 100.0
                ),
                Container(
                  color: Colors.green,
                  width:100.0,
                  height: 100.0
                ),
              ],
            ),
            Container(
              color: Colors.blue,
              width:100.0,
              height: double.infinity,
            )
          ],
        ), */

/* Row(
          // verticalDirection: VerticalDirection.up, // default değeri down
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: double.infinity,
              width: 10,
            ),
            
            Container(
              width: 100.0,
              height: 100.0,
              //padding: EdgeInsets.all(20.0),
              //margin: EdgeInsets.only(left:50.0), //EdgeInsets.fromLTRB(50, 20, 40, 10),
               color:Colors.white,
              child: SelectableText("Container-1"),
            ),
            SizedBox(
              width: 30.0,
            ),

            Container(
              width:100,
              height: 100,
              child: SelectableText('Container-2'),
              color: const Color.fromARGB(255, 239, 147, 177),
            ),
            SizedBox(
              width: 30.0,
            ),
            Container(
              width:100,
              height: 100,
              child: SelectableText('Container-3'),
              color: Color.fromARGB(255, 147, 211, 239),
            ),
          ],
        ) */