import 'package:flutter/material.dart';
import 'package:start1/Widget/Product.dart';
import 'package:start1/controlers/ProductControler.dart';
import 'package:start1/models/Product.dart';
import 'package:start1/pages/cart.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int x = 10;
  int y = 10;

  ProductControler productcontroler = ProductControler();

  List<Product> products = [];

  @override
  void initState() {
    // TODO: implement initState
    productcontroler.addproduct();
    setState(() {
      products = productcontroler.getproduct();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const CartPage(),
                ),
              );

              setState(() {});
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: Icon(Icons.add_circle),
          ),
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: Icon(Icons.do_not_disturb_on),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                for (int i = 0; i < products.length; i++)
                  productwidget(products[i], setState),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            x = int.parse(value);
                          });
                          //print(value);
                        },
                        decoration: InputDecoration(
                            label: Text("add x value"),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(width: 30),
                    Expanded(
                      flex: 6,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            y = int.parse(value);
                          });
                          // print(value);
                        },
                        decoration: InputDecoration(
                          label: Text("add y valu"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  (x + y).toString(),
                ),
                Image.asset("assets/images/img1.jpg"),
                Image.asset("assets/images/img2.jpg"),
                Image.asset("assets/images/img3.jpg"),
                Image.asset("assets/images/img1.jpg"),
                Image.asset("assets/images/img2.jpg"),
                Image.asset("assets/images/img3.jpg"),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
