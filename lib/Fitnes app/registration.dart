
import 'package:fiton/Fitnes%20app/service/firebase%20helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Login page.dart';





class start extends StatefulWidget {

  @override
  State<start> createState() => _startState();

}

class _startState extends State<start> {
  var username_controller=TextEditingController();
  var pass_controller=TextEditingController();
  var email_controller=TextEditingController();
  GlobalKey<FormState>key = GlobalKey();
  bool showpass = true;

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
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),),
                            ),
                            Padding(padding: EdgeInsets.only(
                                top: 60, left: 60, right: 60),
                              child: TextFormField(controller: username_controller,
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
                              child: TextFormField(controller: email_controller,
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
                                child: TextFormField(controller: pass_controller,
                                  style: TextStyle(color: Colors.white),
                                  obscureText: showpass,
                                  obscuringCharacter: "*",
                                  decoration: InputDecoration(

                                      suffixIcon: IconButton(onPressed: () {
                                        setState(() {
                                          if (showpass) {
                                            showpass = false;
                                          }
                                          else {
                                            showpass = true;
                                          }
                                        });
                                      },
                                        icon: Icon(showpass == true ? Icons
                                            .visibility_off : Icons.visibility,
                                          color: Colors.white,),
                                      ),
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
                              child:ElevatedButton(onPressed: (){
                                String email=email_controller.text.trim();
                                String pass=pass_controller.text.trim();
                                //String name=username_controller.text.trim();


                                FireBaseHelper().registerUser(email:email,pwd:pass,).then((result){
                                  if(result==null){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
                                  }else{
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
                                  }
                                });



                              },child: Text("Register"),)
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
