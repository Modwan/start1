import 'package:flutter/material.dart';
import 'package:flutter_slidable_panel/flutter_slidable_panel.dart';

import 'package:start1/models/cart.dart';
import 'package:start1/shared/shared.dart';

Widget cartProduct(Cart product, index, setState) {
  final SlideController _slideController = SlideController(
    usePreActionController: true,
    usePostActionController: true,
  );
  return SlidablePanel(
    controller: _slideController,
    preActions: [
      IconButton(
        onPressed: () {
          //_slideController.toggleAction(0);
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.red,
          shape: const RoundedRectangleBorder(),
        ),
        icon: Icon(Icons.delete),
      ),
    ],
    //jjjjjj

    child: Card(
      child: ListTile(
        leading: Image.asset(
          product.image,
          width: 190,
          height: 190,
        ),
        title: Text(product.name),
        subtitle: Text(
          product.qut.toString(),
        ),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              print("object");
              cartcontroler.deletFromCart(index);
            });
          },
          icon: Icon(Icons.delete),
        ),
      ),
    ),
  );
}
