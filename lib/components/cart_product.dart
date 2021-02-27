import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Product_on_the_cart = [
    {
      "name": "DZ09 Smart Watch",
      "picture": "images/products/product1.jpeg",
      "price": 170,
      "size": "M",
      "color": "Null",
      "quantity": "2"
    },
    {
      "name": "AW-CGD2166-1 Standalone Gas Detector With Magnetic Valve",
      "picture": "images/products/product2.jpeg",
      "price": 55,
      "size": "L",
      "color": "White",
      "quantity": "1"
    },
    {
      "name": "HikVision DS-2CE16C0T-IRP HD IR bullet camera",
      "picture": "images/products/product3.jpeg",
      "price": 60,
      "size": "L",
      "color": "White",
      "quantity": "1"
    },
    {
      "name": "HP 384 G3 Notebook PC",
      "picture": "images/products/product4.jpeg",
      "price": 370,
      "size": "L",
      "color": "Silver",
      "quantity": "1"
    },
    {
      "name": "KERUI GD13 Kitchen Gas Detector",
      "picture": "images/products/product5.jpeg",
      "price": 15,
      "size": "L",
      "color": "White",
      "quantity": "1"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Product_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Product_on_the_cart[index]["name"],
            cart_prod_color: Product_on_the_cart[index]["color"],
            cart_prod_qty: Product_on_the_cart[index]["quantity"],
            cart_prod_size: Product_on_the_cart[index]["size"],
            cart_prod_price: Product_on_the_cart[index]["price"],
            cart_prod_picture: Product_on_the_cart[index]["picture"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //     ======== leading section ========
        leading: new Image.asset(
          cart_prod_picture,
          width: 80.0,
          height: 80.0,
        ),
        ////   ====== Title Section =====
        title: new Text(cart_prod_name),
        ////   ======Sub Title Section =====
        subtitle: new Column(
          children: <Widget>[
            // Row Inside The Column
            new Row(
              children: <Widget>[
                // ======= The Section for the size of the products======
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size :"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                // ======== This section for the product color ======
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color :"),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: new Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
//       =========== This section is for the product Price =========
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),
        trailing: new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            //    new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),

            new IconButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                ),
                alignment: Alignment.bottomLeft,
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
