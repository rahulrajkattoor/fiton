import 'dart:ui';



import 'package:fiton/Fitnes%20app/registration.dart';
import 'package:fiton/Fitnes%20app/service/firebase%20helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fitnes home page.dart';




class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  GlobalKey<FormState> key = GlobalKey();
  bool showpass = true;
  final TextEditingController email_controler=TextEditingController();
  final TextEditingController pass_controler=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(key: key,
        child: Stack(
          children: [
            Container(decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage("assets/icons/Man-Fitness-Wallpaper-HD.jpg"),
                fit: BoxFit.cover), ),
              child:Container(
                color: Colors.white24,
                child: SafeArea(
                  child: ListView(
                    children:[
                      Padding(
                          padding: EdgeInsets.only(top: 150,left: 55),
                          child: Text(
                            "Login your account",
                            style: TextStyle( fontSize: 30,fontWeight: FontWeight.w800),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 60, right: 60, top: 60),
                        child: TextFormField(controller: email_controler,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.white),
                              labelText: "Email",
                              labelStyle: TextStyle(color: Colors.white)),
                          validator: (username) {
                            if (username!.isEmpty ||
                                !username.contains("@") ||
                                !username.contains(".")) {
                              return "enter valid mail";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 60, left: 60, bottom: 20, top: 40),
                        child: TextFormField(controller: pass_controler,
                          style: TextStyle(color: Colors.white),
                          obscureText: showpass,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                              iconColor: Colors.white,
                              suffixIcon: IconButton(
                                color: Colors.white,
                                onPressed: () {
                                  setState(() {
                                    if (showpass) {
                                      showpass = false;
                                    } else {
                                      showpass = true;
                                    }
                                  });
                                },
                                icon: Icon(showpass == true
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: "password",
                              hintStyle: TextStyle(color: Colors.white),
                              labelText: "password",
                              labelStyle: TextStyle(color: Colors.white)),
                          validator: (password) {
                            if (password!.isEmpty || password.length < 6) {
                              return "enter valid passwod";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 100,left: 100,right: 100),
                        child:ElevatedButton(onPressed: (){
                         String email=email_controler.text.trim();
                         String pass=pass_controler.text.trim();
                         FireBaseHelper()
                         .loginUser(email:email,pwd:pass)
                         .then((result){
                           if(result==null){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>fitnesnavigation()));
                           }else{
                             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
                           }
                         });


                        },child: Text("Login"),)
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 80,right: 80,bottom: 100),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => start()));
                            },
                            child: Text(
                              "Create a new account",
                              style: TextStyle(color: Colors.white),
                            )),
                      )

                  ]),
                ),
              )
              ,),

          ],
        ),
      ),
    );
  }
}
