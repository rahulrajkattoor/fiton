


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../fitnes home page.dart';
import 'Workout details.dart';





class dailyworkout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(


       appBar: AppBar(title: Text("Daily workout",style: TextStyle(fontSize: 20),),leading: GestureDetector(onTap: (){
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>fitnesnavigation()));
       },
         child:Icon(Icons.arrow_back_outlined,), ),),
     body:ListView(
       children: [
        InkWell(onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Pushup()));
   },
           child: Card(color: Colors.blue[200],
             child: ListTile(
               leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/push up.jpg"),radius: 25,),
               title: Text("Push ups",style: TextStyle(fontSize: 20),),
               subtitle: Text("25 reps,2 sets"),
             ),
           )
         ),
         InkWell(
           onTap: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Crunches()));
           },
             child: Card(color: Colors.blue[200],
               child: ListTile(
                 leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/crunches.jpg"),radius: 25,),
                 title: Text("Crunches",style: TextStyle(fontSize: 20),),
                 subtitle: Text("30 reps,2 sets"),
               ),
             )
         ),
         InkWell(
             onTap: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>plank()));
             },
             child: Card(color: Colors.blue[200],
               child: ListTile(
                 leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/plank.jpg"),radius: 25,),
                 title: Text("Planks",style: TextStyle(fontSize: 20),),
                 subtitle: Text("60 sec,2 reps"),
               ),
             )
         ),
         InkWell(
             onTap: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Climber()));
             },
             child: Card(color: Colors.blue[200],
               child: ListTile(
                 leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/climber.png"),radius: 25,),
                 title: Text("Climbers",style: TextStyle(fontSize: 20),),
                 subtitle: Text("25 reps,3 sets"),
               ),
             )
         ),
         InkWell(
             onTap: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>squats()));
             },
             child: Card(color: Colors.blue[200],
               child: ListTile(
                 leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/sqauats.jpg"),radius: 25,),
                 title: Text("Squats",style: TextStyle(fontSize: 20),),
                 subtitle: Text("20 reps,3 sets"),
               ),
             )
         ),
         InkWell(
             onTap: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>sideplank()));
             },
             child: Card(color: Colors.blue[200],
               child: ListTile(
                 leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/slide pank.jpg"),radius: 25,),
                 title: Text("Side Planks",style: TextStyle(fontSize: 20),),
                 subtitle: Text("60 sec,2 sets"),
               ),
             )
         ),
         InkWell(
             onTap: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>situp()));
             },
             child: Card(color: Colors.blue[200],
               child: ListTile(
                 leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/situp.gif"),radius: 25,),
                 title: Text("Sit ups",style: TextStyle(fontSize: 20),),
                 subtitle: Text("25 reps,4 sets"),
               ),
             )
         )
       ],
     )

   );
  }

}