
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../fitnes home page.dart';

class chestdetails extends StatelessWidget{
  final String title;
  final String Subtitle;
  final Image image;
  final VoidCallback ontap;
  chestdetails({Key?key, required this.title, required this.Subtitle, required this.image, required this.ontap}):super(key: key);
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
              subtitle: Text(Subtitle),
            ),
          )
        ],
      ),
    );
  }


}
void main(){
  runApp(MaterialApp(home: chest(),));
}
class chest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>fitnesnavigation()));
      },icon: Icon(Icons.arrow_back_outlined),),),
      body: SafeArea(
        child: Column(
          children: [
            chestdetails(title:"JUMPING JACKS", Subtitle: "00:30", image: Image(image: AssetImage("assets/Gif/jumping-jacks-gif.gif"),width: 50,), ontap: (){
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
            }),
            chestdetails(title: "PUSH UPS", Subtitle: "X4", image: Image(image: AssetImage("assets/Gif/Pushup.gif"),width: 50,), ontap: (){
              showModalBottomSheet(context: (context), builder: (BuildContext context){
                return Container(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/Gif/Pushup.gif"),height: 200,width: 500,),
                      SizedBox(height: 5,),
                      Text("PUSH UP",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20),),
                      Text("""         Lay prone on the ground with arms supporting 
       your body.Keep your body straight while raising and 
       lowering your body with your arms""")
                    ],
                  ),
                );
              });
            }),
            chestdetails(title: "TRICEPS DIP", Subtitle: "X6", image: Image(image: AssetImage("assets/Gif/Triceps dips.gif"),width: 50,), ontap: (){
              showModalBottomSheet(context: (context), builder: (BuildContext context){
                return Container(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/Gif/Triceps dips.gif"),height: 200,width: 500,),
                      SizedBox(height: 5,),
                      Text("TRICEPS DIP",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                      Text(""" For the start position ,sit on the chair ,Then move your
       hip off the chair with your hands holding the edge
       of the chair\n
        Slowly bend and stretch your arms to make your
         body go up and down.This is a great exercise for 
         the triceps""")
                    ],
                  ),
                );
              });
            }),
            chestdetails(title: "KNEE PUSHUP", Subtitle: "X4", image:Image(image: AssetImage("assets/Gif/Kneeling-push-ups.gif"),width: 50,) , ontap: (){
              showModalBottomSheet(context: (context), builder: (BuildContext context){
                return Container(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/Gif/Kneeling-push-ups.gif"),height: 200,width: 500,),
                      SizedBox(height: 5,),
                      Text("KNEE PUSHUP",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20),),
                      Text("""      Start in the regular push up position.Then let,
          your knees touch the floor and raise your 
          feet up, off the floor""")
                    ],
                  )
                );
              });
            }),
            chestdetails(title: "WIDE ARM PUSH UP", Subtitle: "X4", image:Image(image: AssetImage("assets/Gif/wide arm pushup.gif"),width: 50,), ontap: (){
              showModalBottomSheet(context: (context), builder: (BuildContext context){
                return Container(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/Gif/wide arm pushup.gif"),height: 200,width: 500,),
                      SizedBox(height: 5,),
                      Text("WIDE ARM PUSH UP",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                      Text("""      Start in the regular push up position but with
         your hands spread wider than your shoulders\n
        Then push your body up and down .Remember
                to keep your body straight""")
                    ],
                  ),
                );
              });
            }),
            chestdetails(title: "DIAMOND PUSH UP", Subtitle: "X16", image: Image(image: AssetImage("assets/Gif/diamond pushup.gif"),width: 50,), ontap: (){
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
            })
          ],
        ),
      ),
    );
  }

}