import 'package:flutter/material.dart';
import 'package:warda/widgets/shopping_card_widget.dart';
import '../values/colors.dart';


class ShoppingCartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var mediaQ=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.pink,
      body: Center(
        child: ShoppingCartWidget(mediaQ: mediaQ),
      ),
    );
  }
}

