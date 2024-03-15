
import 'package:flutter/material.dart';

import '../fitnes home page.dart';






class ActivityTrackerScreen extends StatefulWidget {
  @override
  _ActivityTrackerScreenState createState() => _ActivityTrackerScreenState();
}

class _ActivityTrackerScreenState extends State<ActivityTrackerScreen> {
  List<Activity> activities = [
    Activity(title: 'Running', icon: Icons.directions_run),
    Activity(title: 'Cycling', icon: Icons.directions_bike),
    Activity(title: 'Swimming', icon: Icons.pool),
    Activity(title: 'Yoga', icon: Icons.self_improvement),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> fitnesnavigation()));
          },
          child: Icon(Icons.arrow_back_outlined,),
        ),
        title: Text('Activity Tracker',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: activities.length,
        itemBuilder: (context, index) {
          return _buildActivityCard(activities[index]);
        },
      ),
    );
  }

  Widget _buildActivityCard(Activity activity) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: ListTile(
        leading: Icon(activity.icon),
        title: Text(activity.title),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Handle tap on activity card
          // You can navigate to a specific activity screen or perform other actions
        },
      ),
    );
  }
}

class Activity {
  final String title;
  final IconData icon;

  Activity({required this.title, required this.icon});
}