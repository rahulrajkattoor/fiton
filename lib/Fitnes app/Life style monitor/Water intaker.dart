
import 'package:flutter/material.dart';

import '../fitnes home page.dart';





class WaterIntakeScreen extends StatefulWidget {
  @override
  _WaterIntakeScreenState createState() => _WaterIntakeScreenState();
}

class _WaterIntakeScreenState extends State<WaterIntakeScreen> {
  TextEditingController _waterIntakeController = TextEditingController();
  List<int> _dailyWaterIntakeList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => fitnesnavigation()));
          },
          icon: Icon(
            Icons.arrow_back_outlined,
          ),
        ),
        elevation: 0,
        title: Text(
          'Water Intake Tracker',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTotalWaterContainer(),
              SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                  child: TextField(
                    controller: _waterIntakeController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12.0),
                      hintText: 'Enter water intake (ml)',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: ElevatedButton(
                  onPressed: () {
                    _submitWaterIntake();
                  }, style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTotalWaterContainer() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: 0),
      decoration: BoxDecoration(
        color: Colors.blue.shade600,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.local_drink,
            size: 40,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Text(
            'Total Water',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '${_calculateTotalWater()} ml',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  int _calculateTotalWater() {
    return _dailyWaterIntakeList.fold(0, (sum, amount) => sum + amount);
  }

  void _submitWaterIntake() {
    if (_waterIntakeController.text.isNotEmpty) {
      int waterIntake = int.parse(_waterIntakeController.text);
      setState(() {
        _dailyWaterIntakeList.add(waterIntake);
        _waterIntakeController.clear();
      });
    }
  }
}