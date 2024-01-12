import 'package:flutter/material.dart';
import 'package:start1/controlers/ProductControler.dart';
import 'package:start1/models/Product.dart';

ProductControler productControler = ProductControler();

Widget productwidget(Product product, setState) {
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    width: 220,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.all(
        Radius.circular(4),
      ),
    ),
    child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Image.asset(
          product.image,
          width: 190,
          height: 190,
        ),
        Text(product.name),
        Text(product.price.toString()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  productControler.addQutProduct(product);
                });
              },
              icon: Icon(Icons.add_circle),
            ),
            Text(
              product.qut.toString(),
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    productControler.removeQutProduct(product);
                  });
                },
                icon: Icon(Icons.do_not_disturb_on)),
          ],
        ),
        InkWell(
          onTap: () {
            productControler.addToCart(product);
          },
          child: Text("Add To Cart"),
        ),
      ],
    ),
  );
}
