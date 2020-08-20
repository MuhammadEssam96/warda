import 'package:flutter/cupertino.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({this.id, this.title, this.quantity, this.price});


}
class Cart{
  List item=[];

  addToCart(){
    item.add(1);
  }
}

