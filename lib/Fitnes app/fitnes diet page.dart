
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'fitnes home page.dart';
import 'fitnes home.dart';



class neutritionpage extends StatefulWidget {
  @override
  State<neutritionpage> createState() => _neutritionpageState();
}

class _neutritionpageState extends State<neutritionpage> {
 var title=["Breakfast","Snack","Lunch","Snack","Dinner"];
 var subtitle=[""" Oatmeal with fruits (like berries or bananas)
 Greek yogurt with honey and nuts
 Whole grain toast with avocado and eggs
""",
   """
   A piece of fruit (apple, pear, or berries)
Handful of almonds or mixed nuts
 Carrot sticks with hummus
   """,
   """
   Grilled chicken or tofu salad with mixed greens, veggies
 Whole grain wrap with turkey, lettuce, tomato, and avocado
 Quinoa salad with chickpeas, cucumber, and feta cheese
   """,
   """ Cottage cheese with pineapple or peach slices
 Rice cakes with almond butter
 Greek yogurt with granola
   """,
   """
   Baked salmon with quinoa and steamed vegetables
 Stir-fry with tofu or lean beef, broccoli,bell peppers
   """
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(leading: GestureDetector(onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>fitnesnavigation()));
      },
        child:Icon(Icons.arrow_back_outlined), ),),
      body:ListView.builder(itemBuilder: (context,index) {
      return Card(color: Colors.blue[200],
        child: ListTile(
          title: Text(title[index],style: TextStyle(fontSize: 25),),
          subtitle: Text(subtitle[index]),subtitleTextStyle: TextStyle(textBaseline: TextBaseline.ideographic),

        ),
      );
    },itemCount: 5,)
    );
  }
}
