

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Fitnes daily workout.dart';



class Pushup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement((context),
                MaterialPageRoute(
                  builder: (context) => dailyworkout(),));
          },
          child: Icon(Icons.arrow_back_outlined,),
        ),
        title: Text(
          "Pushup",
          style: TextStyle(fontSize: 26, ),
        ),
        centerTitle: true,
        elevation: 0,

      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color:  Colors.blue.shade100,borderRadius: BorderRadius.circular(30)),
          height: 680,
          width: 500,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset("assets/Gif/Pushup GIF - Pushup - Discover & Share GIFs.gif",height:200,),
                ),
                SizedBox(height:10),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Get Ready,\n\n",
                    style: TextStyle(fontSize:30,color: Colors.black,fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text:
                        "Start in a plank position with hands slightly wider than shoulders",
                        style: TextStyle(fontSize: 20),
                      ),
                      TextSpan(
                        text: "\n\nDown We Go:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "\n• Lower your chest by bending your elbows.\n"
                            "• Keep your body straight from head to heels.",
                        style: TextStyle(fontSize: 20),
                      ),
                      TextSpan(
                        text: "\n\nUp We Rise:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "\n• Push through your palms, fully extending your arms.\n"
                            "• Maintain a straight body during the ascent.",
                        style: TextStyle(fontSize: 20),
                      ),
                      TextSpan(
                        text: "\n\nRepeat:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "\nComplete your desired number of reps with controlled movements.",
                        style: TextStyle(fontSize: 20),
                      ),
                      TextSpan(
                        text: "\n\nTips",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "\n• Keep your neck neutral.\n"
                            "• Inhale as you lower, exhale as you push up.\n"
                            "• Adjust hand placement to suit your challenge level.",
                        style: TextStyle(fontSize: 20),
                      ),
                      TextSpan(
                        text: "\n\nCommon Mistakes:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "\n• Avoid sagging or arching.\n"
                            "• Watch for elbows flaring out.\n"
                            "• Keep shoulders away from your ears.",
                        style: TextStyle(fontSize: 20),
                      ),
                      TextSpan(
                        text: "\n\nSafety First:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "\n• Address wrist discomfort with adjustments.\n"
                            "• Listen to your body; don't overexert.",
                        style: TextStyle(fontSize: 20),
                      ),
                      TextSpan(
                        text: "\n\nChallenge Yourself:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "\n• Gradually increase reps or try different variations.",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Crunches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement((context),
                MaterialPageRoute(
                  builder: (context) => dailyworkout(),));
          },
          child: Icon(Icons.arrow_back_outlined,),
        ),
        title: Text(
          "Crunches",
          style: TextStyle(fontSize: 26, ),
        ),
        centerTitle: true,
        elevation: 0,

      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue.shade100, borderRadius: BorderRadius.circular(30)),
          height: 680,
          width: 500,
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset("assets/Gif/crunches (1).gif",height:200,),
                  ),
                  SizedBox(height:10),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Crunches",
                          style: TextStyle(fontSize: 25,color: Colors.black),
                          children: [
                            TextSpan(
                              text:
                              "\n\nCrunches are a great exercise for targeting your abdominal muscles, helping you build a strong core. Follow these steps for effective crunches:",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text: "\n\n1. Starting Position:",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                              "\n   Lie on your back with your knees bent and feet flat on the floor. Place your hands behind your head, elbows pointing out.",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text: "\n\n2. Crunching Movement:",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                              "\n   Lift your shoulders off the floor using your abdominal muscles. Avoid pulling on your neck or using momentum.",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text: "\n\n3. Squeeze and Lower:",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                              "\n   Squeeze your abdominal muscles at the top of the movement, then slowly lower your shoulders back to the floor.",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text: "\n\n4. Breathing:",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                              "\n   Exhale as you crunch up and inhale as you lower. This helps engage your core muscles effectively.",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text: "\n\n5. Repetitions:",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                              "\n   Aim for 3 sets of 15-20 repetitions. Focus on controlled movements for better results.",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]))
                ]
            ),
          ),
        ),
      ),
    );
  }
}
class plank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement((context),
                MaterialPageRoute(
                  builder: (context) => dailyworkout(),));
          },
          child: Icon(Icons.arrow_back_outlined),
        ),
        title: Text(
          "Plank",
          style: TextStyle(fontSize: 26, ),
        ),
        centerTitle: true,
        elevation: 0,

      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue.shade100, borderRadius: BorderRadius.circular(30)),
          height: 680,
          width: 500,
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset("assets/Gif/plank (1).png",height:160,),
                  ),
                  SizedBox(height:10),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Plank",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                      children: [
                        TextSpan(
                          text:
                          "\n\nPlanks are an excellent full-body exercise that targets your core, shoulders, and back. Follow these steps for a proper plank:",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n1. Starting Position:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Begin in a forearm plank position with your elbows directly below your shoulders. Keep your body in a straight line from head to heels.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n2. Engage Your Core:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Tighten your core muscles and hold the position. Avoid letting your hips sag or raising them too high.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n3. Breathing:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Breathe deeply and evenly. Focus on maintaining a stable position throughout the exercise.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n4. Duration:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Hold the plank for 30 seconds to 1 minute, gradually increasing the duration as you get stronger.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n5. Repetitions:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Perform 3 sets, gradually adding more time or sets to challenge yourself.",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
class Climber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement((context),
                MaterialPageRoute(
                  builder: (context) => dailyworkout(),));
          },
          child: Icon(Icons.arrow_back_outlined),
        ),
        title: Text(
          "Climber",
          style: TextStyle(fontSize: 26, ),
        ),
        centerTitle: true,
        elevation: 0,

      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue.shade100, borderRadius: BorderRadius.circular(30)),
          height: 680,
          width: 500,
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset("assets/Gif/climber.gif",height:160,),
                  ),
                  SizedBox(height:10),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Mountain Climbers",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                      children: [
                        TextSpan(
                          text:
                          "\n\nMountain Climbers are a dynamic full-body exercise that engages your core, arms, and legs. Follow these steps for proper mountain climbers:",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n1. Starting Position:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Begin in a plank position with your hands directly below your shoulders and your body forming a straight line.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n2. Alternating Knee Drive:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Bring one knee toward your chest while keeping the other leg extended. Alternate legs in a running motion.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n3. Engage Core Muscles:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Tighten your core muscles throughout the exercise. Maintain a steady and controlled pace.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n4. Breathing:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Breathe deeply and evenly as you perform the alternating knee drives. Focus on your breath to maintain rhythm.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n5. Repetitions:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Aim for 3 sets of 30 seconds to 1 minute, gradually increasing the duration as you build stamina.",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
class squats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement((context),
                MaterialPageRoute(
                  builder: (context) => dailyworkout(),));
          },
          child: Icon(Icons.arrow_back_outlined),
        ),
        title: Text(
          "Squats",
          style: TextStyle(fontSize: 26,),
        ),
        centerTitle: true,
        elevation: 0,

      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue.shade100, borderRadius: BorderRadius.circular(30)),
          height: 680,
          width: 500,
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset("assets/Gif/squats.gif",height:160,),
                  ),
                  SizedBox(height:10),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Squats",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                      children: [
                        TextSpan(
                          text:
                          "\n\nSquats are a fundamental lower body exercise that targets your quadriceps, hamstrings, and glutes. Follow these steps for proper squats:",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n1. Starting Position:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Stand with your feet shoulder-width apart. Keep your chest up, shoulders back, and core engaged.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n2. Lowering Phase:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Initiate the squat by bending your knees and pushing your hips back. Lower your body as if sitting back into an imaginary chair.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n3. Depth:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Aim to lower yourself until your thighs are parallel to the ground. Keep your knees aligned with your toes.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n4. Ascending Phase:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Push through your heels and engage your glutes to stand back up to the starting position.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n5. Breathing:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Inhale as you lower into the squat and exhale as you return to the starting position. Maintain a steady breathing rhythm.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n6. Repetitions:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Perform 3 sets of 12-15 repetitions. Focus on proper form and control throughout the exercise.",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}

class sideplank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement((context),
                MaterialPageRoute(
                  builder: (context) => dailyworkout(),));
          },
          child: Icon(Icons.arrow_back_outlined),
        ),
        title: Text(
          "Side plank",
          style: TextStyle(fontSize: 26,),
        ),
        centerTitle: true,
        elevation: 0,

      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue.shade100, borderRadius: BorderRadius.circular(30)),
          height: 680,
          width: 500,
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset("assets/Gif/slideplank.gif"),
                  ),
                  SizedBox(height:10),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Sliding Plank",
                      style: TextStyle(fontSize: 25,color: Colors.black),
                      children: [
                        TextSpan(
                          text:
                          "\n\nThe Sliding Plank is an advanced variation of the traditional plank exercise that engages your core and challenges your stability. Follow these steps for a sliding plank:",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n1. Starting Position:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Begin in a high plank position with your hands directly below your shoulders. Place sliders or towels under your feet.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n2. Sliding Movement:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Engage your core and slide one foot to the side, bringing your knee toward your elbow. Keep your body in a straight line.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n3. Return to Plank:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Slide the foot back to the starting position, returning to the high plank. Alternate between sides.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n4. Control and Stability:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Focus on maintaining control and stability throughout the movement. Keep your hips level and core engaged.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n5. Breathing:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Breathe deeply and consistently as you perform the sliding plank. Exhale during the sliding movement and inhale as you return to the plank.",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "\n\n6. Repetitions:",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                          "\n   Aim for 3 sets of 12-15 repetitions on each side. Increase or decrease the intensity based on your fitness level.",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
class situp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sit-ups",
          style: TextStyle(fontSize: 26, ),
        ),
        centerTitle: true,
        elevation: 0,

        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement((context),
                MaterialPageRoute(
                  builder: (context) => dailyworkout(),));
          },
          child: Icon(
            Icons.arrow_back_outlined,
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue.shade100, borderRadius: BorderRadius.circular(30)),
          height: 680,
          width: 500,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset("assets/Gif/situp (1).gif",height: 250,),
                ),
                SizedBox(height:10),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Sit-ups",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                        "\n\nSit-ups are an effective abdominal exercise that targets your core muscles. Follow these steps for proper sit-ups:",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextSpan(
                        text: "\n\n1. Starting Position:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "\n   Lie on your back with your knees bent and feet flat on the floor. Place your hands behind your head, elbows pointing out.",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextSpan(
                        text: "\n\n2. Crunching Movement:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "\n   Engage your core muscles and lift your upper body off the floor, bringing your chest towards your knees.",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextSpan(
                        text: "\n\n3. Lowering Phase:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "\n   Slowly lower your upper body back to the starting position, controlling the movement to engage your core.",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextSpan(
                        text: "\n\n4. Breathing:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "\n   Inhale as you lower your upper body and exhale as you crunch up. Maintain a steady breathing rhythm.",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextSpan(
                        text: "\n\n5. Repetitions:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "\n   Aim for 3 sets of 15-20 repetitions. Focus on controlled movements and engage your core throughout.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}