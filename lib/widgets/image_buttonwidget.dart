import 'package:campus_app/utils/colors/colors.dart';
import 'package:flutter/widgets.dart';

class ImageButtonWidget extends StatelessWidget {
  const ImageButtonWidget({Key? key, required this.imageRouteName, required this.text}) : super(key: key);

  final String imageRouteName;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageRouteName)
                )
            ),
          ),
          Text(text, style: const TextStyle(
            fontSize: 15, color: AppColors.textbuttonColor,
          ),)
        ],
      );
  }
}