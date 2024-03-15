import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'account.dart';
import 'fitnes home.dart';


class fitnesnavigation extends StatefulWidget {
  @override
  State<fitnesnavigation> createState() => _navigationState();
}

class _navigationState extends State<fitnesnavigation> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: index,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          onTap: (tap) {
            setState(() {
              index = tap;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
          ],
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Center(
            child: _getpage(index),
          ),
        ));
  }
}

_getpage(int page) {
  switch (page) {
    case 0:
      return fitneshome();
    case 1:
      return Settings();
  }
}
