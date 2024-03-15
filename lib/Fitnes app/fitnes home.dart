import 'package:carousel_slider/carousel_slider.dart';



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '30 days workout/Workout screen/advanced workout.dart';
import '30 days workout/Workout screen/beginer workout.dart';
import '30 days workout/Workout screen/intermediate workout.dart';
import 'Calender/Calender.dart';
import 'Fitnes daily workout/Fitnes daily workout.dart';

import 'Life style monitor/Water intaker.dart';
import 'Life style monitor/activity tracker.dart';
import 'Life style monitor/sleep tracker.dart';
import 'fitnes diet page.dart';
import 'fitnes home work out details/abs workout details.dart';
import 'fitnes home work out details/arm workout details.dart';
import 'fitnes home work out details/chest workout details.dart';
import 'fitnes home work out details/leg workout details.dart';



class fitneshome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,

        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Home Workouts",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Calender()));
                },
                icon: Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.blue,
                  size: 30,
                ))
          ],
          elevation: 0,
        ),
        body: ListView(
          children: [
            CarouselSlider(
              items: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/icons/top-view-arrangement-with-diet-planning-notepad.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => neutritionpage()));
                      },
                    ),
                    width: 400,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/icons/beginer workout.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => dailyworkout()));
                      },
                    ),
                    width: 400,
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 200,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 10),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Lifestyle Monitor",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                  )),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(17),
              child: Row(
                children: [
                  box(
                      title: "Sleep Tracking",
                      icon: Icons.bedtime_outlined,
                      color: Colors.redAccent.shade400,
                      ontap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SleepTrackerScreen()));
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  box(
                      title: "Water Intake",
                      icon: Icons.water_drop_outlined,
                      color: Colors.blueAccent.shade400,
                      ontap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WaterIntakeScreen()));
                      }),

                  SizedBox(
                    width: 10,
                  ),
                  box(
                      title: "Activity Tracker",
                      icon: Icons.directions_run,
                      color: Colors.purple.shade500,
                      ontap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ActivityTrackerScreen()));
                      })
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => abs()));
              },
              child: Card(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image(
                        image: AssetImage("assets/icons/abs.jpeg"),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13, left: 60),
                      child: Text(
                        "Abs Workout",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => arm()));
              },
              child: Card(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image(
                        image: AssetImage("assets/icons/arms.jpeg"),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13, left: 60),
                      child: Text(
                        "Arm Workout",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => chest()));
              },
              child: Card(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image(
                        image: AssetImage("assets/icons/chest.jpeg"),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13, left: 60),
                      child: Text(
                        "Chest Workout",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => leg()));
              },
              child: Card(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image(
                        image: AssetImage("assets/icons/leg.jpeg"),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13, left: 60),
                      child: Text(
                        "Leg Workout",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Workout section",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 26),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => beginner()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade300),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BEGINNERS",
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                        Text(
                          "For Weight Loss",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        Text(
                          "30 Days",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => intermediate()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade500),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "INTERMEDIATE",
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                        Text(
                          "For Fat Loss",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        Text(
                          "30 Days",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => advance()));
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue.shade700),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ADVANCED",
                                style: TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black),
                              ),
                              Text(
                                "For Toned Body",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              Text(
                                "30 Days",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black),
                              ),
                              
                            ],
                          ),
                        ))))
          ],
        ),

    );
  }
}

class box extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback ontap;

  box(
      {Key? key,
      required this.title,
      required this.icon,
      required this.color,
      required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(17)),
        child: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
