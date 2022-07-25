import 'package:flutter/material.dart';

import '../utils/colors/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final int? maxLines;
  final double borderRadius; 
  const TextFieldWidget({Key? key, required this.hintText, this.maxLines = 1,  this.borderRadius = 30.0,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: AppColors.textHolder,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(borderRadius)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(borderRadius)
        ),  
      ),
    );
  }
}