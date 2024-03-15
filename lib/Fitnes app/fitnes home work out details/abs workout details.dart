

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../fitnes home page.dart';


class abs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => fitnesnavigation()));
            },
            child: Icon(Icons.arrow_back_outlined),
          ),
        ),
        body: ListView(children: [
          Card(
              child: ListTile(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext cotext) {
                    return Container(
                        child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/Gif/jumping-jacks-gif.gif"),
                          height: 200,
                          width: 500,
                        ),
                        Text(
                          "JUMPING JACKS",
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic),
                        ),



                          Text(
                            """   Start with your feet together and your arms by
         your sides,then jump up with your feet apart and 
         your hands overhead""",

                        )
                      ]
                    ));
                  });
            },
            leading: Image(
              image: AssetImage("assets/Gif/jumping-jacks-gif.gif"),
              width: 50,
            ),
            title: Text(
              "JUMPING JACKS",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text("30 Seconds"),
          )),
          Card(
              child: ListTile(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/Gif/plank.gif"),
                            height: 200,
                            width: 500,
                          ),
                          Text(
                            "PLANK",
                            style: TextStyle(
                                fontSize: 20, fontStyle: FontStyle.italic),
                          ),


                            Text(  """   Lie on the floor with your toes and forearms on the 
    ground. Keep your body straight and hold this positon
     as long as you can"""
                          )
                        ],
                      ),
                    );
                  });
            },
            leading: Image(
              image: AssetImage("assets/Gif/plank.gif"),
              width: 50,
            ),
            title: Text(
              "PLANKS",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text("1 minute"),
          )),
          Card(
                child: ListTile(
                  onTap: (){
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage("assets/Gif/Leg Raise (2).gif"),
                                  height: 200,
                                  width: 500,
                                ),
                                Text(
                                  "LEG RAISES",
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic, fontSize: 20),
                                ),

                                 Text( "     Lie on the floor,legs streched forward.Raise your "
                                     "        legs bent at the knees"
                               )
                              ],
                            ),
                          );
                        });
                  },
              leading: Image(
                image: AssetImage("assets/Gif/Leg Raise (2).gif"),
                width: 50,
              ),
              title: Text(
                "LEG RAISES",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("2 Sets"),
            )),

          Card(
              child: ListTile(
                onTap: (){
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          child: Column(
                            children: [
                              Image(
                                image:
                                AssetImage("assets/Gif/mountain climber.gif"),
                                height: 200,
                                width: 500,
                              ),
                              Text(
                                "MOUNTAIN CLIMBER",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic, fontSize: 20),
                              ),

                               Text(""" Start in the push-up position.Bend your right knee
              towards your chest and keep your left leg     straight,then quickly switch from one leg to another 
                   """
                             )
                            ],
                          ),
                        );
                      });
                },
                leading: Image(
                  image: AssetImage("assets/Gif/mountain climber.gif"),
                  width: 50,
                ),
                title: Text(
                  "MOUNTAIN CLIMBER",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("x12"),
              ),
            ),

          Card(
              child: ListTile(
                onTap: (){
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          child: Column(
                            children: [
                              Image(
                                image:
                                AssetImage("assets/Gif/bicycle crunches.gif"),
                                height: 200,
                                width: 500,
                              ),
                              Text(
                                "BICYCLE CRUNCHES",
                                style: TextStyle(
                                    fontSize: 20, fontStyle: FontStyle.italic),
                              ),

                                Text( "     Lie on the floor with your hands behind your ears Raise your knees and "
                                    " close your right elbow toward your left knee"
                              )
                            ],
                          ),
                        );
                      });
                },
                leading: Image(
                  image: AssetImage("assets/Gif/bicycle crunches.gif"),
                  width: 50,
                ),
                title: Text(
                  "BICYCLE CRUNCHES",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("x10"),
              ),
            ),

          Card(
              child: ListTile(
                onTap: (){
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage("assets/Gif/v-up.gif"),
                                height: 200,
                                width: 500,
                              ),
                              Text(
                                "V-UP",
                                style: TextStyle(
                                    fontSize: 20, fontStyle: FontStyle.italic),
                              ),

                                Text( "     Raise your upper body and legs use your arms "
                                    " to touch your toes"
                              )
                            ],
                          ),
                        );
                      });
                },
                leading: Image(
                  image: AssetImage("assets/Gif/v-up.gif"),
                  width: 50,
                ),
                title: Text(
                  "V-UP",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("x20"),
              ),
            ),

           Card(
              child: ListTile(
                onTap: (){
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage("assets/Gif/cobra stretch.gif"),
                                height: 200,
                                width: 500,
                              ),
                              Text(
                                "COBRA STRETCH",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic, fontSize: 20),
                              ),

                               Text("""   Lie down on your stomach and bend your elbows with
                       your hands beneth your shoulders"""
                             )
                            ],
                          ),
                        );
                      });
                },
                leading: Image(
                  image: AssetImage("assets/Gif/cobra stretch.gif"),
                  width: 50,
                ),
                title: Text(
                  "COBRA STRETCH",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("30 sec"),
              ),
            ),

        ]));
  }
}
