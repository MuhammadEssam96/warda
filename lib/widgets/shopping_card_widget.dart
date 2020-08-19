import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:warda/ui/values/colors.dart';
import 'card_button.dart';
class ShoppingCartWidget extends StatelessWidget {
  const ShoppingCartWidget({
    Key key,
    @required this.mediaQ,
  }) : super(key: key);

  final double mediaQ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Image.asset('assets/images/warda_logo.png',width:mediaQ*0.25),
      Text('Shopping cart',style:TextStyle(
        color: AppColors.grayDark,
        fontSize: 20,
      ),),
      SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            //row have 3 rows.
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            //image and product details
            Row(
              children: [
                Image.asset('assets/images/flower-in-jug.jpg',width: mediaQ/4,),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text('Flower 1',style: TextStyle(color: AppColors.teal),),
                    SizedBox(height: 15,),
                    Text('15\$',style: TextStyle(color: AppColors.grayDark,fontWeight: FontWeight.bold,fontSize: 18),),
                  ],
                ),
              ],
            ),
            //add and remove
            Row(children: [
            Column(
              children: [
                Row(children: [
                  CardButton(iconButton: FontAwesomeIcons.plus),
                  SizedBox(width:15),
                  Text('15',style: TextStyle(color: AppColors.grayDark,fontWeight: FontWeight.bold,fontSize: 18),),
                  SizedBox(width:15),
                  CardButton(iconButton: FontAwesomeIcons.minus)
                ],)

              ],
            ),
        ],)
        ],),
          )
          ),
      )
    ],);
  }
}

