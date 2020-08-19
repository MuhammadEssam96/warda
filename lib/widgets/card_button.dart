import 'package:flutter/material.dart';

import '../ui/values/colors.dart';

class CardButton extends StatelessWidget {
  CardButton({this.iconButton});
  final IconData iconButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:30 ,
      height: 30,
      decoration: BoxDecoration(color: Colors.teal[100],
      borderRadius: BorderRadius.circular(25)
       ),
       child: Icon(iconButton,color: AppColors.grayDark,size: 15,),
      );
  }
}