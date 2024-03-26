






import 'package:fiton/Fitnes%20app/Calender/Event.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

import '../fitnes home page.dart';





class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

//store the event create
  Map<DateTime, List<Event>> event = {};
  TextEditingController event_controller = TextEditingController();
  late final ValueNotifier<List<Event>> _selectedEvents;

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventforday(_selectedDay!));
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onDaySelected(DateTime selectedday, DateTime focusedday) {
    if (!isSameDay(_selectedDay, selectedday)) {
      setState(() {
        _selectedDay = selectedday;
        _focusedDay = focusedday;
        _selectedEvents.value = _getEventforday(selectedday);
      });
    }
  }

  List<Event> _getEventforday(DateTime day) {
    //receive all event from selected day
    return event[day] ?? [];
  }

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "Calender",
          style:
          GoogleFonts.aleo(fontSize: 25,),
        ),
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => fitnesnavigation()));
            },
            child: Icon(
              Icons.arrow_back,

            )),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
                margin: const EdgeInsets.all(8),
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.calendar_month_sharp,
                  color: Colors.blueAccent.shade700,
                  size: 40,
                )),
          )
        ],
      ),
      body:
      SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  color: Colors.blue.shade400,
                  child: TableCalendar(
                    firstDay: DateTime.utc(2010, 1, 1),
                    lastDay: DateTime.utc(2050, 1, 1),
                    onDaySelected: _onDaySelected,
                    focusedDay: _focusedDay,
                    eventLoader: _getEventforday,
                    calendarFormat: _calendarFormat,
                    rowHeight: 40,
                    calendarStyle: CalendarStyle(outsideDaysVisible: false),
                    selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                    onFormatChanged: (format) {
                      if (_calendarFormat != format) {
                        setState(() {
                          _calendarFormat = format;
                        });
                      }
                    },
                    onPageChanged: (focusedDay) {
                      _focusedDay = focusedDay;
                    },
                  ),
                )),
            SizedBox(height: 10),
            Expanded(
              child: ValueListenableBuilder<List<Event>>(
                  valueListenable: _selectedEvents,
                  builder: (context, value, _) {
                    return ListView.builder(
                        itemCount: value.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              onTap: () => print(""),
                              title: Text('${value[index]}',
                                  style: GoogleFonts.merriweather(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50,
                                      color: Colors.blue.shade800)),
                              //Display name & date
                              subtitle: Text('${_selectedDay!.toLocal()}',
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue.shade800)),
                            ),
                          );
                        });
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  scrollable: true,
                  title: Text("Add your Goals"),
                  content: TextField(

                    controller: event_controller,
                    decoration: InputDecoration(
                      hintText: "Enter your Goals here",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)// Change this line
                      ),

                    ),),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          //here we store event name in to map
                          event.addAll({
                            _selectedDay!: [Event(event_controller.text)]
                          });
                          Navigator.pop(context);
                          _selectedEvents.value =
                              _getEventforday(_selectedDay!);
                        },
                        child: Text("Save",style: TextStyle(color: Colors.black),))
                  ],
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}