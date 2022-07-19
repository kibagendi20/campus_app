import 'package:campus_app/utils/colors/colors.dart';
import 'package:campus_app/widgets/image_buttonwidget.dart';
import 'package:campus_app/widgets/main_button.dart';
import 'package:campus_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          //image: DecorationImage(image: AssetImage("images/topbar.jpg"))
        ),
        child: Column(
          children: [
            Container(
              //margin: EdgeInsets.only(bottom: -10),
              height: MediaQuery.of(context).size.height*0.3,
              decoration: const BoxDecoration(
                //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/topbar.jpg")
                )
              ),
            ),
            Expanded(
              child: Container(
              decoration: const BoxDecoration(
                color: AppColors.textColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/background1.jpg")
                )
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  SizedBox(
                      height: MediaQuery.of(context).size.height*0.09,
                    ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: const TextFieldWidget(hintText: "Email")),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.03,
                    ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: const TextFieldWidget(hintText: "Password")),
                  SizedBox(
                      height: MediaQuery.of(context).size.height*0.03,
                    ),
                  Container(
                     margin: const EdgeInsets.only(left: 20, right: 20),
                    child: const MainButton(text: "Sign In", buttonColor: AppColors.buttonColor)),
                  TextButton(onPressed: (){}, child: const Text("Forgot password?", 
                  style: TextStyle(
                    color: AppColors.textbuttonColor,
                  ),
                  )
                  ),
                   SizedBox(
                      height: MediaQuery.of(context).size.height*0.1,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(child: Container()),

                           Container(
                      width: 90,
                      height: 40,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(right:5),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.textColor
                      ),
                      child: const ImageButtonWidget(imageRouteName: "images/facebook.jpeg", text: "Sign In",),
                  ),

                           Container(
                              width: 90,
                              height: 40,
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.only(left:5),
                              decoration:  BoxDecoration(
                                  color: AppColors.textColor,
                                  borderRadius: BorderRadius.circular(12)
                      ),
                            child: const ImageButtonWidget(imageRouteName: "images/google.png", text: "Sign In",),
                  ),
                  Expanded(child: Container()),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.03,
                    ),
                    TextButton(onPressed: (){}, child: RichText(text: const TextSpan(
              text: "Don\'t have an account?",
              style: TextStyle(
                fontSize: 14,
                color: AppColors.textHolder,
              ),
              children: [
                TextSpan(
                  text: " Sign Up",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.textbuttonColor,
                  )
                )
              ]
            )))     
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}