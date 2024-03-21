

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fiton/Fitnes%20app/fitnes%20home%20page.dart';
import 'package:fiton/Fitnes%20app/service/firebase%20helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Login page.dart';





class start extends StatefulWidget {
  start({Key?key}):super(key: key);

  @override
  State<start> createState() => _startState();

}

class _startState extends State<start> {

TextEditingController _usernamecontroller=TextEditingController();
TextEditingController _emailcontroller=TextEditingController();
TextEditingController _passwordcontroller=TextEditingController();
  GlobalKey<FormState>key = GlobalKey();
  bool showpass = true;
String? email;
String? password;
String? name;

@override
void dispose() {
  super.dispose();
  _emailcontroller.dispose();
  _passwordcontroller.dispose();
}



void signUpUser() async {
  print("Signing up user...");
  try {
    await context.read<Firebaseauth_method>().Signupemail(
      email: _emailcontroller.text,
      password: _passwordcontroller.text,
      name: _usernamecontroller.text,
      context: context,
    );

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => loginpage()));
    print("Sign up successful!");
  } catch (e) {
    print("Error during sign up: $e");
  }
}

  Widget build(BuildContext context) {
    return Scaffold(

        body: Form(key: key,
          child: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage(
                          "assets/icons/Man-Fitness-Wallpaper-HD.jpg"),
                      fit: BoxFit.cover),),
                  child: Container(
                    color: Colors.white24,
                    child: SafeArea(
                      child: ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 150, left: 85),
                              child: Text(
                                "Register your account", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800),),
                            ),
                            Padding(padding: EdgeInsets.only(
                                top: 60, left: 60, right: 60),
                              child: TextFormField(controller: _usernamecontroller,
                                onSaved: (ename){
                                name=ename;
                                },
                                style: TextStyle(
                                  color: Colors.white),
                                decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.person, color: Colors.white,),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),),
                                    hintText: "Name",
                                    hintStyle: TextStyle(color: Colors.white),
                                    labelText: "Name",
                                    labelStyle: TextStyle(color: Colors.white)
                                ),
                              ),),

                            Padding(padding: EdgeInsets.only(
                                left: 60, right: 60, top: 20),
                              child: TextFormField(controller: _emailcontroller,
                                onSaved: (pwd){
                                password=pwd;
                                },
                                style: TextStyle(
                                  color: Colors.white),
                                decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.mail, color: Colors.white,),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),),
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.white),
                                    labelText: "Email",
                                    labelStyle: TextStyle(color: Colors.white)
                                ),
                                validator: (username) {
                                  if (username!.isEmpty ||
                                      !username.contains("@") ||
                                      !username.contains(".")) {
                                    return "enter valid mail";
                                  }
                                  else {
                                    return null;
                                  }
                                },
                              ),),

                            Padding(
                                padding: const EdgeInsets.only(
                                    right: 60, left: 60, top: 10),
                                child: TextFormField(controller: _passwordcontroller,
                                  obscuringCharacter: '*',
                                  obscureText: showpass,
                                  style: TextStyle(color: Colors.white),

                                  decoration: InputDecoration(

                                      suffixIcon: Icon(Icons.password,color: Colors.white,),

                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            15),),
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.white),
                                      labelText: "Password",
                                      labelStyle: TextStyle(color: Colors.white)
                                  ),
                                  validator: (password) {
                                    if (password!.isEmpty ||
                                        password.length < 6) {
                                      return "enter valid passwod";
                                    }
                                    else {
                                      return null;
                                    }
                                  },


                                ),),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 100, right: 100, top: 20),
                              child:MaterialButton(
                                color: Colors.pink,
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                onPressed: signUpUser,
                              child: Text("Register"),)
                            ),

                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 100, right: 100),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context, MaterialPageRoute(
                                        builder: (context) => loginpage()));
                                  }, child: Text("Login your account",
                                style: TextStyle(color: Colors.white),)),
                            )


              ]),
                    ),

                  )

              )],
          )
          ,
        )
    );
  }





}
