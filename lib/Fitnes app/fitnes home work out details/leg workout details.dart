
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../fitnes home page.dart';

class leg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>fitnesnavigation()));
      }, icon:Icon(Icons.arrow_back_outlined),),),
      body: SafeArea(
        child: Column(
          children: [
            legdetails(title: "SIDE HOP", subtitle: "00:30", image:Image(image: AssetImage("assets/Gif/side hop.gif"),width: 50,), ontap: (){
              showModalBottomSheet(context: (context), builder: (BuildContext context){
                return Container(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/Gif/side hop.gif"),height: 200,width: 500,),
                      SizedBox(height: 5,),
                      Text("SIDE HOP",style: TextStyle(fontStyle: FontStyle.italic),),
                      Text("         Stand on the floor ,put your hands in front "
                          "of you           and hop from side to side")
                    ],
                  ),
                );
              });
            }),
            legdetails(title: "BACKWARD LUNGE", subtitle: "X14", image:Image(image: AssetImage("assets/Gif/backward lunge.gif"),width: 50,), ontap: (){
              showModalBottomSheet(context: (context), builder: (BuildContext context){
                return Container(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/Gif/backward lunge.gif"),height: 200,width: 500,),
                      SizedBox(height: 5,),
                      Text("BACKWARD LUNGE",style: TextStyle(fontStyle: FontStyle.italic),),
                      Text("""      Stand with your feet shulder width apart 
             and your hands on your hips\n
                      Step a big step backward with your 
                right leg and lower your body until you left
                thigh is parallel to the floor ,
                Return and repeat with the other side""")
                    ],
                  ),
                );
              });
            }),
            legdetails(title: "JUMPING JACKS", subtitle: "00:30", image: Image(image: AssetImage("assets/Gif/jumping-jacks-gif.gif"),width: 50,),
                ontap: (){
                  showModalBottomSheet(context: (context), builder: (BuildContext context){
                    return Container(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/Gif/jumping-jacks-gif.gif"),
                            height: 200,
                            width: 500,
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "JUMPING JACKS",
                            style: TextStyle(
                                fontSize: 20, fontStyle: FontStyle.italic),
                          ),
                          Text(
                            """    Start with your feet together and your arms by your 
        sides,then jump up with your feet apart and your 
        hands overhead""",

                          )],
                      ),
                    );
                  });

                })
          ],
        ),
      ),
    );
  }
  
}
class legdetails extends StatelessWidget{
  final String title;
  final String subtitle;
  final Image image;
  final VoidCallback ontap;
  legdetails({Key?key, required this.title, required this.subtitle, required this.image, required this.ontap}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
         Card(
          child: ListTile(
            onTap: ontap,
            leading: image,
            title: Text(title,style: TextStyle(fontSize: 20),),
            subtitle: Text(subtitle),
          ),
        ),
      ]),
    );
  }
  
}