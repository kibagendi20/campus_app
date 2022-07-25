import 'package:campus_app/utils/colors/colors.dart';
import 'package:flutter/widgets.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key, required this.text, required this.buttonColor}) : super(key: key);
  final String text;
  final Color buttonColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Text(text,style: const TextStyle(
        color: AppColors.textColor,
        fontSize: 16
      )
      )
    );
  }
}