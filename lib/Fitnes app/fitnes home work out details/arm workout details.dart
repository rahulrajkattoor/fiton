
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../fitnes home page.dart';
import '../fitnes home.dart';

void main(){
  runApp(MaterialApp(home: arm(),));
}
class arm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>fitnesnavigation()));
            },icon: Icon(Icons.arrow_back_outlined),
          )
        ),
        body:SafeArea(
            child: Column(
              children: [
                armdetails(title: "PUSH UP",
                  image:Image(image: AssetImage("assets/Gif/Pushup.gif"),width: 50,),
                  subtitle: "X10", ontap: () {
                    showModalBottomSheet(context: context, builder: (BuildContext context){
                      return Container(
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/Gif/Pushup.gif"),height: 200,width: 500,),
                            SizedBox(height: 5,),
                            Text("PUSH UP",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                           Text("""   Lay prone on the ground with arms supporting your
    body keep your body straight while raising and        
    lowering your body with your arms""")

                          ],
                        ),
                      );
                    });
                  },

                ),
                armdetails(title: "DIAMOND PUSHUP", image:Image(image: AssetImage("assets/Gif/diamond pushup.gif"),width: 50,), subtitle: "X6", ontap: (){
                  showModalBottomSheet(context: context, builder: (BuildContext context){
                    return Container(
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/Gif/diamond pushup.gif"),height: 200,width: 500,),
                          SizedBox(height: 5,),
                          Text("DIAMOND PUSHUP",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                          Text("""    Start in the push up position .Make a diamond shape 
        with your forefingers and thumbs together under 
        your chest""")
                        ],
                      ),
                    );
                  });
                }),
                armdetails(title: "BURPEES", image: Image(image: AssetImage("assets/Gif/Burpees.gif"),width: 50,), subtitle: "X10",
                    ontap: (){
                  showModalBottomSheet(context: context, builder: (BuildContext context){
                    return Container(
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/Gif/Burpees.gif"),height: 200,width: 500,),
                          SizedBox(height: 5,),
                          Text("BURPEES",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20),),
                          Text("""   Stand with your feet shoulder with apart,then put your
        hands on the ground and kick your feet 
        backward.Do a quick push up and then jump up""")
                        ],
                      ),
                    );
                  });
                    }),
                armdetails(title: "INCHWORMS", image:Image(image: AssetImage("assets/Gif/inchworms.gif"),width: 50,), subtitle: "X8",
                    ontap:(){
                  showModalBottomSheet(context: context, builder: (BuildContext context){
                    return Container(
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/Gif/inchworms.gif"),height: 200,width: 500,),
                          SizedBox(height: 5,),
                          Text("INCHWORMS",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                          Text("""  Bend your body and walk your hands in front of you as    
       far as you can ,then walk your hands back.Repeat
        the exercise""")
                        ],
                      ),
                    );
                  });
                    }),
                armdetails(title: "SKIPPING WITH ROPE", image: Image(image: AssetImage("assets/Gif/Skipping with rope.gif"),width: 50,), subtitle: "00:30",
                    ontap:(){
                  showModalBottomSheet(context: context, builder: (BuildContext context){
                    return Container(
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/Gif/Skipping with rope.gif"),height: 200,width: 500,),
                          SizedBox(height: 5,),
                          Text("SKIPPING WITH ROPE",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20),),
                          Text("""   Place your arms at your sides and pretend to hold a
         skipping rope handle in each hand Jump and 
         alternately land on the balls of your feet,
           rotating your wrists at the same time as if you 
           were spinning a rope"""),
                        ],
                      ),
                    );
                  });
                    }),
                armdetails(title:"TRICEPS DIPS", image: Image(image: AssetImage("assets/Gif/Triceps dips.gif"),width: 50,), subtitle: "X10",
                    ontap: (){
                  showModalBottomSheet(context: context, builder: (BuildContext context){
                    return Container(
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/Gif/Triceps dips.gif"),height: 200,width: 500,),
                          SizedBox(height: 5,),
                          Text("TRICEPS DIPS",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                          Text("""  For the start position ,sit on the chair .Then move you 
       hip off the chair with your hands holding the edge 
       of the chair\n
       Slowly bend and stretch your arms to make your 
       body go up and down .This is greatest exercise 
       for the triceps"""),

                        ],
                      ),
                    );
                  });
                    })
              ],
            )
        )
    );
  }
}
class armdetails extends StatelessWidget{
  final String title ;
  final Image image;
  final String subtitle;
  final VoidCallback ontap;
  armdetails({Key?key, required this.title, required this.image, required this.subtitle, required this.ontap}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(

      child: Column(
        children: [
          Card(
            child:  ListTile(
              onTap: ontap,
              leading:image,
              title: Text(title,style: TextStyle(fontSize: 20),),
              subtitle: Text(subtitle),
            ),
          )
        ],
      ),


    );
  }

}