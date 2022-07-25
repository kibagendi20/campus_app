import 'package:flutter/material.dart';
class CommunicationScreen extends StatelessWidget {
  const CommunicationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Communication", style: TextStyle(color: Color.fromARGB(255, 68, 112, 255)),),
        centerTitle: true
      ),
      body:  Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/mainpage1.jpg")
          )
        ),
      ),
    );
  }
}