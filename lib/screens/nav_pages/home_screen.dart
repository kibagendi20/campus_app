import 'package:campus_app/screens/nav_pages/apointmnet_screen.dart';
import 'package:campus_app/screens/nav_pages/communication_screen.dart';
import 'package:campus_app/screens/nav_pages/register_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }


  List<Widget> pages = const [
  AppointmentScreen(),
  RegisterScreen(),
  CommunicationScreen()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        elevation: 0,
        selectedItemColor: const Color.fromARGB(255, 149, 68, 255),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.date_range, size: 15,),label: "Appointments"),
           BottomNavigationBarItem(icon: Icon(Icons.border_color_rounded, size: 15),label: "Register"),
            BottomNavigationBarItem(icon: Icon(Icons.message_rounded, size: 15),label: "Communicate"),
        ],
      ),
    );
  }
}