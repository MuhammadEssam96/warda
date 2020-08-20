import 'package:flutter/material.dart';

import '../ui/values/colors.dart';

class CardButton extends StatelessWidget {
  CardButton({this.iconButton, this.buttonFunction});
  final IconData iconButton;
  final Function buttonFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunction,
          child: Container(
        width:30 ,
        height: 30,
        decoration: BoxDecoration(color: Colors.teal[100],
        borderRadius: BorderRadius.circular(25)
         ),
         child: Icon(iconButton,color: AppColors.grayDark,size: 15,),
         
        ),
    );
  }
}