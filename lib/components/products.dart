import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_man_bd/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [

    {
      "name": "HikVision DS-2CE16C0T-IRP HD IR bullet camera",
      "picture": "images/products/product3.jpeg",
      "old_price": 63,
      "price": 60,
    },
    {
      "name": "HP 384 G3 Notebook PC",
      "picture": "images/products/product4.jpeg",
      "old_price": 400,
      "price":370,
    },
    {
      "name": "KERUI GD13 Kitchen Gas Detector",
      "picture": "images/products/product5.jpeg",
      "old_price": 18,
      "price": 15,
    },
    {
      "name": "V8 Smart Watch",
      "picture": "images/products/product6.jpeg",
      "old_price": 36,
      "price": 32,
    },
    {
      "name": "Dahua 4CH DVR with 1Megapixel Camera",
      "picture": "images/products/product7.jpeg",
      "old_price": 66,
      "price": 63,
    },
    {
      "name": "Dell Inspiron N3162 Celeron-N3060 Processor",
      "picture": "images/products/product8.jpeg",
      "old_price": 160,
      "price": 155,
    },
    {
      "name": "Bill Counter with Voice",
      "picture": "images/products/product9.jpeg",
      "old_price": 67,
      "price": 65,
    },
    {
      "name": "Hikvision 4CH NVR with 2Megapixel IP Camera",
      "picture": "images/products/product10.jpeg",
      "old_price": 55,
      "price": 47,
    },
    {
      "name": "Bill Counter",
      "picture": "images/products/product11.jpeg",
      "old_price": 96,
      "price": 94,
    },
    {
      "name": "Z60 Smart Watch",
      "picture": "images/products/product12.jpeg",
      "old_price": 33,
      "price": 32,
    },
    {
      "name": "GMS Security Alarm System",
      "picture": "images/products/product13.jpeg",
      "old_price": 23,
      "price": 19,
    },
    {
      "name": "Hikvision DS-2CE56C0T-IRP",
      "picture": "images/products/product14.jpeg",
      "old_price": 95,
      "price": 92,
    },
    {
      "name": "AW-CGD2166-1 Standalone Gas Detector With Magnetic Valve",
      "picture": "images/products/product15.jpeg",
      "old_price": 45,
      "price": 41,
    },
    {
      "name": "AW-CGP2166 Standalone Gas Detector",
      "picture": "images/products/product16.jpeg",
      "old_price": 32,
      "price": 29,
    },
    {
      "name": "Huawei Honor AP08 10000mAm Power Bank",
      "picture": "images/products/product17.jpeg",
      "old_price": 12,
      "price": 9,
    },
    {
      "name": "DZ09 Smart Watch",
      "picture": "images/products/product1.jpeg",
      "old_price": 63,
      "price": 59,
    },
    {
      "name": "DZ09 Smart Watch",
      "picture": "images/products/product1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "AW-CGD2166-1 Standalone Gas Detector With Magnetic Valve",
      "picture": "images/products/product2.jpeg",
      "old_price": 60,
      "price": 55,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Products2 extends StatefulWidget {
  @override
  _ProductsState2 createState() => _ProductsState2();
}

class _ProductsState2 extends State<Products2> {
  var product_list = [

    {
      "name": "HikVision DS-2CE16C0T-IRP HD IR bullet camera",
      "picture": "images/security_products/gsm_product1.jpg",
      "old_price": 63,
      "price": 60,
    },
    {
      "name": "HP 384 G3 Notebook PC",
      "picture": "images/security_products/gsm_product2.jpg",
      "old_price": 400,
      "price":370,
    },
    {
      "name": "KERUI GD13 Kitchen Gas Detector",
      "picture": "images/security_products/gsm_product3.jpg",
      "old_price": 18,
      "price": 15,
    },
    {
      "name": "V8 Smart Watch",
      "picture": "images/security_products/gsm_product4.jpg",
      "old_price": 36,
      "price": 32,
    },
    {
      "name": "Dahua 4CH DVR with 1Megapixel Camera",
      "picture": "images/security_products/gsm_product5.jpg",
      "old_price": 66,
      "price": 63,
    },
    {
      "name": "Dell Inspiron N3162 Celeron-N3060 Processor",
      "picture": "images/security_products/gsm_product6.jpg",
      "old_price": 160,
      "price": 155,
    },
    {
      "name": "Bill Counter with Voice",
      "picture": "images/security_products/gsm_product7.jpg",
      "old_price": 67,
      "price": 65,
    },
    {
      "name": "Hikvision 4CH NVR with 2Megapixel IP Camera",
      "picture": "images/security_products/gsm_product8.jpg",
      "old_price": 55,
      "price": 47,
    },
    {
      "name": "Bill Counter",
      "picture": "images/security_products/gsm_product9.jpg",
      "old_price": 96,
      "price": 94,
    },
    {
      "name": "Z60 Smart Watch",
      "picture": "images/security_products/gsm_product10.jpg",
      "old_price": 33,
      "price": 32,
    },
    {
      "name": "GMS Security Alarm System",
      "picture": "images/security_products/gsm_product11.jpg",
      "old_price": 23,
      "price": 19,
    },
    {
      "name": "Hikvision DS-2CE56C0T-IRP",
      "picture": "images/security_products/gsm_product12.jpg",
      "old_price": 95,
      "price": 92,
    },
    {
      "name": "AW-CGD2166-1 Standalone Gas Detector With Magnetic Valve",
      "picture": "images/security_products/gsm_product13.jpg",
      "old_price": 45,
      "price": 41,
    },
    {
      "name": "AW-CGP2166 Standalone Gas Detector",
      "picture": "images/security_products/gsm_product14.jpg",
      "old_price": 32,
      "price": 29,
    },
    {
      "name": "Huawei Honor AP08 10000mAm Power Bank",
      "picture": "images/security_products/gsm_product15.jpg",
      "old_price": 12,
      "price": 9,
    },
    {
      "name": "DZ09 Smart Watch",
      "picture": "images/security_products/gsm_product16.jpg",
      "old_price": 63,
      "price": 59,
    },
    {
      "name": "DZ09 Smart Watch",
      "picture": "images/security_products/gsm_product17.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "AW-CGD2166-1 Standalone Gas Detector With Magnetic Valve",
      "picture": "images/security_products/gsm_product18.jpg",
      "old_price": 60,
      "price": 55,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Products3 extends StatefulWidget {
  @override
  _ProductsState3 createState() => _ProductsState3();
}

class _ProductsState3 extends State<Products3> {
  var product_list = [

    {
      "name": "HikVision DS-2CE16C0T-IRP HD IR bullet camera",
      "picture": "images/fashion_products/fashion_product1.jpg",
      "old_price": 63,
      "price": 60,
    },
    {
      "name": "HP 384 G3 Notebook PC",
      "picture": "images/fashion_products/fashion_product2.jpg",
      "old_price": 400,
      "price":370,
    },
    {
      "name": "KERUI GD13 Kitchen Gas Detector",
      "picture": "images/fashion_products/fashion_product3.jpg",
      "old_price": 18,
      "price": 15,
    },
    {
      "name": "V8 Smart Watch",
      "picture": "images/fashion_products/fashion_product4.jpg",
      "old_price": 36,
      "price": 32,
    },
    {
      "name": "Dahua 4CH DVR with 1Megapixel Camera",
      "picture": "images/fashion_products/fashion_product5.jpg",
      "old_price": 66,
      "price": 63,
    },
    {
      "name": "Dell Inspiron N3162 Celeron-N3060 Processor",
      "picture": "images/fashion_products/fashion_product6.jpg",
      "old_price": 160,
      "price": 155,
    },
    {
      "name": "Bill Counter with Voice",
      "picture": "images/fashion_products/fashion_product7.jpg",
      "old_price": 67,
      "price": 65,
    },
    {
      "name": "Hikvision 4CH NVR with 2Megapixel IP Camera",
      "picture": "images/fashion_products/fashion_product8.jpg",
      "old_price": 55,
      "price": 47,
    },
    {
      "name": "AW-CGD2166-1 Standalone Gas Detector With Magnetic Valve",
      "picture": "images/fashion_products/fashion_product9.jpg",
      "old_price": 60,
      "price": 55,
    },
    {
      "name": "Bill Counter",
      "picture": "images/fashion_products/fashion_product10.jpg",
      "old_price": 96,
      "price": 94,
    },
    {
      "name": "Z60 Smart Watch",
      "picture": "images/fashion_products/fashion_product11.jpg",
      "old_price": 33,
      "price": 32,
    },
    {
      "name": "GMS Security Alarm System",
      "picture": "images/fashion_products/fashion_product12.jpg",
      "old_price": 23,
      "price": 19,
    },
    {
      "name": "Hikvision DS-2CE56C0T-IRP",
      "picture": "images/fashion_products/fashion_product13.jpg",
      "old_price": 95,
      "price": 92,
    },
    {
      "name": "AW-CGD2166-1 Standalone Gas Detector With Magnetic Valve",
      "picture": "images/fashion_products/fashion_product14.jpg",
      "old_price": 45,
      "price": 41,
    },
    {
      "name": "AW-CGP2166 Standalone Gas Detector",
      "picture": "images/fashion_products/fashion_product15.jpg",
      "old_price": 32,
      "price": 29,
    },
    {
      "name": "Huawei Honor AP08 10000mAm Power Bank",
      "picture": "images/fashion_products/fashion_product16.jpg",
      "old_price": 12,
      "price": 9,
    },
    {
      "name": "DZ09 Smart Watch",
      "picture": "images/fashion_products/fashion_product17.jpg",
      "old_price": 63,
      "price": 59,
    },
    {
      "name": "DZ09 Smart Watch",
      "picture": "images/fashion_products/fashion_product18.jpg",
      "old_price": 120,
      "price": 85,
    }

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
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
