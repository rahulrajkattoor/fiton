

import 'dart:async';


import 'package:fiton/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Login page.dart';


class splash extends StatefulWidget{
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override


  @override
 void initState(){
  super.initState();
 Timer(Duration(seconds: 5), () {
 Navigator.push(context, MaterialPageRoute(builder: (context)=>AuthWrapper()));
   });


  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.blue[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 100,right: 30),
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Center(child: ClipRRect(borderRadius: BorderRadius.circular(15),
                    child:Image(image: AssetImage("assets/SVG/3796626.jpg"),height: 300,width: 300,))),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 40,top: 40),
                child: Center(child: Text("Its time to change",style: GoogleFonts.aleo(fontSize:40,fontWeight:FontWeight.w800),)),
              ),
              SizedBox(height: 60,),

            ],
          ),
        ),
      ),
    );
  }
}