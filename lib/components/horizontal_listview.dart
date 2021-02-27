import 'package:flutter/material.dart';
import 'package:sales_man_bd/components/products.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/category/security1.png',
            image_caption: 'Security',
          ),
          Category(
            image_location: 'images/category/fashion1.png',
            image_caption: 'Fashion',
          ),
          Category(
            image_location: 'images/category/cctv2.png',
            image_caption: 'CCTV',
          ),
          Category(
            image_location: 'images/category/computer1.png',
            image_caption: 'Computer',

          ),
          Category(
            image_location: 'images/category/software1.png',
            image_caption: 'Software',
          ),
          Category(
            image_location: 'images/category/storage1.png',
            image_caption: 'Storage',
          ),
          Category(
            image_location: 'images/category/mobile1.png',
            image_caption: 'Mobile',
          ),

        ],
      ),

    );
  }
}

class HorizontalList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/security_categorys/gsm_logo1.png',
            image_caption: 'Mobile',
          ),
          Category(
            image_location: 'images/security_categorys/gsm_logo2.png',
            image_caption: 'Lock',
          ),
          Category(
            image_location: 'images/security_categorys/gsm_logo3.png',
            image_caption: 'Finger',
          ),
          Category(
            image_location: 'images/security_categorys/gsm_logo4.png',
            image_caption: 'CCTV',
          ),
          Category(
            image_location: 'images/security_categorys/gsm_logo5.png',
            image_caption: 'Face',
          ),
          Category(
            image_location: 'images/security_categorys/gsm_logo6.png',
            image_caption: 'Safety',
          ),
          Category(
            image_location: 'images/security_categorys/gsm_logo7.png',
            image_caption: 'Security',
          ),

        ],
      ),

    );
  }
}
class HorizontalList3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/fashion_category/fashion_category1.png',
            image_caption: 'Shirt',

          ),
          Category(
            image_location: 'images/fashion_category/fashion_category2.png',
            image_caption: 'Pant',
          ),
          Category(
            image_location: 'images/fashion_category/fashion_category3.png',
            image_caption: 'Shoes',
          ),
          Category(
            image_location: 'images/fashion_category/fashion_category4.png',
            image_caption: 'Jackate',
          ),
          Category(
            image_location: 'images/fashion_category/fashion_category5.png',
            image_caption: 'Cap',
          ),
          Category(
            image_location: 'images/fashion_category/fashion_category6.png',
            image_caption: 'Cosmatics',
          ),
          Category(
            image_location: 'images/fashion_category/fashion_category7.png',
            image_caption: 'Bag',
          ),

        ],
      ),

    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({this.image_location, this.image_caption, Padding child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => new Products2()));
        },
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 30.0,
            ),
            subtitle: Container(
              alignment: Alignment.center,
              child: Text(image_caption,style: new TextStyle(fontSize: 12.0,),),
            )
          ),
        ),
      ),
    );
  }
}
