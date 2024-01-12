import 'package:flutter/material.dart';
import 'package:flutter_slidable_panel/controllers/slide_controller.dart';
import 'package:flutter_slidable_panel/models.dart';
import 'package:start1/Widget/card.dart';

import 'package:start1/models/cart.dart';
import 'package:start1/shared/shared.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Cart> cartList = [];

  @override
  void initState() {
    setState(() {
      cartList = cartcontroler.getCart();
      print(cartList);
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          for (int i = 0; i < cartList.length; i++)
            cartProduct(cartList[i], i, setState),
          if (cartList.isEmpty) Text("cart is empty"),
        ],
      ),
    );
  }
}
