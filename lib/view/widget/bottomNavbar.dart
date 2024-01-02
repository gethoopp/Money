import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money/view/content/home.dart';
import 'package:money/view/content/logout.dart';

import '../content/stat.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0;

  List page = [
    const Home(),
    const Statistic(),
    const Home(),
    const LogOut()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: page[index],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          selectedItemColor: Colors.lightBlue[100],
          unselectedItemColor: Colors.black54,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 20,
          items: const [
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.houseChimney,size: 20,),
                label: 'Home',
                
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.barsProgress,size: 20,),
              label: 'statistic',
              backgroundColor: Colors.white,
            ),

              BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.circleNotch,size: 20,),
              label: 'statistic',
              backgroundColor: Colors.white,
            ),

             BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.peopleArrows,size: 20,),
              label: 'statistic',
              backgroundColor: Colors.white,
            ),

            
          ]),
    );
  }
}
