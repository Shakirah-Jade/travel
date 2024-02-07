import 'package:flutter/material.dart';
import 'package:travel/detailspage.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> with SingleTickerProviderStateMixin {
  var selecteditem = 0;
  List children = [
    DetailsPage(),
    DetailsPage(),
    DetailsPage(),
    DetailsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: children[selecteditem],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1B1B1B),
        selectedItemColor: Color(0xFFFD4F99),
        iconSize: 27.0,
        currentIndex: selecteditem,
        unselectedLabelStyle: TextStyle(color: Color(0xFF1B1B1B)),
        unselectedItemColor: Color(0xFF888888),
        onTap: (currIndex) {
          setState(() {
            selecteditem = currIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1B1B1B),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1B1B1B),
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1B1B1B),
            icon: Icon(Icons.camera_alt),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1B1B1B),
            icon: Icon(Icons.person_2_outlined),
            label: 'Contact',
          ),
          // Add more items as needed
        ],
      ),
    );
  }
}
