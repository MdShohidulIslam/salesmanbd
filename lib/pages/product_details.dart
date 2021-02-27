import 'package:flutter/material.dart';
//import 'package:daraz/main.dart';

import 'home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        // hide appbar shadow
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>new TopTabBarHidden()));
            },
            child: Text('Sales Man BD')),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),

        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 240.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(
                        "\$${widget.product_detail_old_price}",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: new Text(
                        "\$${widget.product_detail_new_price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),

//          ======== the first buttons =======
          Row(
            children: <Widget>[
              // ===== the size button =====
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Choose the Size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("Choose the Color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Color"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Quantiry"),
                            content: new Text("Choose the Quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("QTy"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //          ======== the second buttons =======
          Row(
            children: <Widget>[
              // ===== the size button =====
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: new Text("Buy Now")),
              ),
              new IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.blue,
                  ),
                  onPressed: () {}),

              new IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.blue,
                  onPressed: () {}),
            ],
          ),
          Divider(
//              color: Colors.red
          ),
          new ListTile(
            title: new Text("Description :"),
            subtitle: new Text("KERUI GD13 LED Digital Display Wired Voice Gas Detector Motion Sensor Gas Alarm for GSM Alarm System"),
          ),
          new ListTile(
            title: new Text("Features :"),
            subtitle: new Text("Voice prompt, English.High reliable catalytic combustion method.Display gas concentration (PPM).Power supply from AC 100V - 240V.Intelligent Microprocessor control.Auto detect sensor failure.Auto send notification to host when alarm.One relay output when alarm."),
          ),
          new ListTile(
            title: new Text("Specification :"),
            subtitle: new Text("Alarm Output: Sound & Flash alarm Alarm "
                "Indicator: Red LED light flashes Radio "
                "distance : up to 150m (open area) "
                "Alarm density : 2500 PPM ( ± 1500PPM) "
                "Sound Level: ≥ 85dB/m Operating "
                "Temperature: -10℃ to +50℃ "
                "Environment Humidity: Maximum 95%RH (no congelation) "
                "Dimension: 120 x 70 x 45mm"),
          ),
          new ListTile(
            title: new Text("Installation place :"),
            subtitle: new Text("1. Place like kitchen, garage, basement, coal mine."
                "2. Install according to gas weight."
                "3. If the detector is installed on corridor, the width of the corridor can't exceed 4 meters."
                "4. The best installation place is the midpoint between bedroom and living room. Wall mounted gas detector should be 150cm above the floor. "),
          ),
          new ListTile(
            title: new Text("Package includeds :"),
            subtitle: new Text("1 x KERUI GD13 Wired Voice Gas Detector "
                "1 x English User Manual "),
          ),
          Divider(
//              color: Colors.red
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product Name : ",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Brand : ",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                // remember to create a brand name
                child: new Text("Tosiba"),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Condition : ",style: TextStyle(color: Colors.grey),),),

              Padding(padding: EdgeInsets.all(5.0),
                // remember to create product condition
                child: new Text("New Best Quality Product"),)
            ],
          ),
          Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Text("Similar Products"),
        ),
          // similar products section
          Container(
            height: 360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}
class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {

  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/product1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "T-Shirt",
      "picture": "images/products/product2.jpeg",
      "old_price": 80,
      "price": 50,
    },
    {
      "name": "T-Shirt",
      "picture": "images/products/product3.jpeg",
      "old_price": 80,
      "price": 50,
    },
    {
      "name": "T-Shirt",
      "picture": "images/products/product4.jpeg",
      "old_price": 80,
      "price": 50,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }

}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod(
      {this.prod_name,
        this.prod_picture,
        this.prod_old_price,
        this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              // here we are passing the values of the product details page
                builder: (context) => new ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_new_price: prod_price,
                  product_detail_old_price: prod_old_price,
                  product_detail_picture: prod_picture,
                ))),
            child: GridTile(
                footer: Container(
                    color: Colors.white70,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            prod_name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        new Text(
                          "\$${prod_price}",
                          style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}


