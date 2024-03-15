

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../fitnes home page.dart';
import '../day list.dart';
import '../day model.dart';
import '../exercize model.dart';
import '../workout data.dart';




class beginner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading:  IconButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> fitnesnavigation()));
          },
          icon: Icon(
            Icons.arrow_back_outlined,
          ),),
        title: Text('Beginner Workout',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
        ),
        elevation: 0,
      ),

      body:

      WorkoutScreen(),
    );
  }
}

class WorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ADV_DAYS_LIST.length,
      itemBuilder: (context, index) {
        return DayWidget1(DAY: ADV_DAYS_LIST[index], exercises: ADV_EXERCISES_LIST);
      },
    );
  }
}

class DayWidget1 extends StatelessWidget {
  final DaysWidget DAY;
  final List<ExcerciseModel> exercises;

  DayWidget1({required this.DAY, required this.exercises});

  @override
  Widget build(BuildContext context) {
    List<ExcerciseModel> dayExercises = exercises
        .where((exercise) => DAY.id == 'd4' ? exercise.category.isEmpty : exercise.category.contains(DAY.id))
        .toList();

    return Card(
      color: Colors.blue.shade400,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("30 Days Full-Body Workouts",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              DAY.day,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Exercises: ${DAY.excercises}'),
            Text('Time: ${DAY.time}'),
            Text('Rest Time: ${DAY.restTime}'),
            if (DAY.id != 'd4') // No exercises for rest day
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: dayExercises.map((exercise) => ExerciseWidget(exercise: exercise)).toList(),
              ),
          ],
        ),
      ),
    );
  }
}

class ExerciseWidget extends StatelessWidget {
  final ExcerciseModel exercise;

  ExerciseWidget({required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(exercise.nameOfExcercise),
        subtitle: Text('Sets: ${exercise.sets}'),
        leading: Image.asset(exercise.gif),
        onTap: () {
          // Handle exercise tap
        },
      ),
    );
  }
}