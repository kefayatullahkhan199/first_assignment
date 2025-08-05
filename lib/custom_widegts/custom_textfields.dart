import 'package:first_assignment/configs/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFields extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;
  final Color fieldColor;

  const CustomFields(
      {required this.hintText,
      required this.textEditingController,
      required this.fieldColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18,),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.lightOrangeColor, width: 1),
              borderRadius: BorderRadius.circular(12)
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.whiteColor, width: 1),
              borderRadius: BorderRadius.circular(12)
            ),
                
            hintText: hintText,
            fillColor: fieldColor,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            )),
      ),
    );
  }
}
