
import 'package:flutter/material.dart';

import '../fitnes home page.dart';





class SleepTrackerScreen extends StatefulWidget {
  @override
  _SleepTrackerScreenState createState() => _SleepTrackerScreenState();
}

class _SleepTrackerScreenState extends State<SleepTrackerScreen> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedStartTime = TimeOfDay.now();
  TimeOfDay _selectedEndTime = TimeOfDay.now();
  Duration _sleepDuration = Duration();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => fitnesnavigation()));
            },
            child: Icon(
              Icons.arrow_back_outlined,
            ),
          ),
          elevation: 0,
          title: Text(
            'Sleep Tracker',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset( "assets/icons/Rest.png",
                height: 300,
                fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildDateSelector(),
                      SizedBox(height: 20),
                      _buildTimeSelector(
                        title: 'Sleep Start Time',
                        selectedTime: _selectedStartTime,
                        onTimeChanged: (TimeOfDay time) {
                          setState(() {
                            _selectedStartTime = time;
                            _calculateSleepDuration();
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      _buildTimeSelector(
                        title: 'Sleep End Time',
                        selectedTime: _selectedEndTime,
                        onTimeChanged: (TimeOfDay time) {
                          setState(() {
                            _selectedEndTime = time;
                            _calculateSleepDuration();
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      _buildSleepDurationDisplay(),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          _submitSleepData();
                        },style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                        child: Text('Submit Sleep Data'),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget _buildDateSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            'Date: ${_selectedDate.toLocal()}'.split(' ')[0],
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 20),
        IconButton(
          onPressed: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: _selectedDate,
              firstDate: DateTime(2020),
              lastDate: DateTime(2101),
            );

            if (pickedDate != null && pickedDate != _selectedDate) {
              setState(() {
                _selectedDate = pickedDate;
              });
            }
          },
          icon: Icon(Icons.calendar_today),
        ),
      ],
    );
  }

  Widget _buildTimeSelector({
    required String title,
    required TimeOfDay selectedTime,
    required Function(TimeOfDay) onTimeChanged,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            '$title: ${selectedTime.format(context)}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 20),
        ElevatedButton(
          onPressed: () async {
            TimeOfDay? pickedTime = await showTimePicker(
              context: context,
              initialTime: selectedTime,
            );

            if (pickedTime != null && pickedTime != selectedTime) {
              onTimeChanged(pickedTime);
            }
          },style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: Text('Select Time'),
        ),
      ],
    );
  }

  Widget _buildSleepDurationDisplay() {
    return Text(
      'Sleep Duration: ${_sleepDuration.inHours}h ${(_sleepDuration.inMinutes % 60)}m',
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
    );
  }

  void _calculateSleepDuration() {
    DateTime startDateTime = DateTime(
      _selectedDate.year,
      _selectedDate.month,
      _selectedDate.day,
      _selectedStartTime.hour,
      _selectedStartTime.minute,
    );

    DateTime endDateTime = DateTime(
      _selectedDate.year,
      _selectedDate.month,
      _selectedDate.day,
      _selectedEndTime.hour,
      _selectedEndTime.minute,
    );

    _sleepDuration = endDateTime.difference(startDateTime);
  }

  void _submitSleepData() {
    // You can handle the submission logic here
    // For example, you can save the sleep data to a database or perform other actions
    print('Sleep Data Submitted:');
    print('Date: $_selectedDate');
    print('Start Time: ${_selectedStartTime.format(context)}');
    print('End Time: ${_selectedEndTime.format(context)}');
    print(
        'Sleep Duration: ${_sleepDuration.inHours}h ${(_sleepDuration.inMinutes % 60)}m');
  }
}