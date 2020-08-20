import 'package:flutter/material.dart';
import 'package:warda/ui/models/cart.dart';
import 'package:warda/ui/values/colors.dart';
import 'package:warda/widgets/shopping_card_widget.dart';



class ShoppingCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQ=MediaQuery.of(context).size.width;
    return Column(children: [
      Expanded(
        flex: 1,
              child: Text('Shopping cart',style:TextStyle(
          color: AppColors.grayDark,
          fontSize: 20,
        ),),
      ),
      // SizedBox(height: 2,),
      Expanded(
        flex: 10,
              child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index){
          return ShoppingCartWidget(mediaQ: mediaQ);
        },),
      ),
      Expanded(flex: 2,
      child: Container(
        alignment: Alignment.center,
        width: mediaQ-26,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(30), ),
          child: Text('Procced to checkout',style: TextStyle(color: AppColors.white),),
      ),),
    ],
    );
    
  }
}

