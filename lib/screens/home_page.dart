import 'package:campus_app/utils/colors/colors.dart';
import 'package:campus_app/widgets/main_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.cover,
                  image: AssetImage("images/main_homepage.jpg")
          )
        ),
        child: Column(
          children: [
            Expanded(child: Container()),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child:  InkWell(onTap:(){},child:const MainButton(text: "Get Started", buttonColor: AppColors.buttonColor)),
            ),
            TextButton(onPressed: (){}, child: RichText(text: const TextSpan(
              text: "Already an admin?",
              style: TextStyle(
                fontSize: 14,
                color: AppColors.textbuttonColor,
              ),
              children: [
                TextSpan(
                  text: "Login",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.textbuttonColor1,
                  )
                )
              ]
            )))
          ],
        ),
      ) ,
    );
  }
}