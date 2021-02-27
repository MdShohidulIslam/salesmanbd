import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// my owm imports
//import 'components/horizontal_listview.dart';
//import 'components/products.dart';
import 'package:sales_man_bd/components/horizontal_listview.dart';
import 'package:sales_man_bd/components/products.dart';
import 'package:sales_man_bd/pages/signup.dart';

import 'cart.dart';
import 'login.dart';

//class TopTabBar extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: DefaultTabController(
//        length: 3,
//        child: Scaffold(
//
//          appBar: new AppBar(
//            // hide appbar shadow
//            elevation: 0.1,
//            backgroundColor: Colors.blue,
//            title: Text('Sales Man BD'),
//            actions: <Widget>[
//              new IconButton(
//                  icon: Icon(
//                    Icons.search,
//                    color: Colors.white,
//                  ),
//                  onPressed: () {}),
//              new IconButton(
//                  icon: Icon(
//                    Icons.shopping_cart,
//                    color: Colors.white,
//                  ),
//                  onPressed: () {
//                    Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
//                  }),
//            ],
//
//    bottom: TabBar(
//              tabs: [
//                Tab(icon: Icon(Icons.star),text:'All',),
//                Tab(icon: Icon(Icons.star_border),text:'Security',),
//                Tab(icon: Icon(Icons.star_half),text:'Fashion',),
//              ],
//          ),
//          ),
//          drawer: new Drawer(
//            child: new ListView(
//              children: <Widget>[
//                //header
//                new UserAccountsDrawerHeader(
//                  accountName: Text('Sales Man BD'),
//                  accountEmail: Text('salesmanbd.com'),
//
//                  currentAccountPicture: GestureDetector(
//                    child: new CircleAvatar(
//                      backgroundColor: Colors.grey,
//                      backgroundImage: AssetImage('images/carousel/carousel1.jpeg'),
////                      child: Icon(Icons.person, color: Colors.white,),
//                    ),
//                  ),
//                  decoration: BoxDecoration(
//                      color: Colors.blue
//                  ),
//                ),
//                // body
//                InkWell(
//                  onTap: (){},
//                  child: ListTile(
//                    title: Text('Home Page'),
//                    leading: Icon(Icons.home,color: Colors.blue,),
//                  ),
//                ),
//                InkWell(
//                  onTap: (){},
//                  child: ListTile(
//                    title: Text('My Account'),
//                    leading: Icon(Icons.person,color: Colors.blue,),
//                  ),
//                ),
//                InkWell(
//                  onTap: (){},
//                  child: ListTile(
//                    title: Text('My Orders'),
//                    leading: Icon(Icons.shopping_basket,color: Colors.blue,),
//                  ),
//                ),
//                InkWell(
//                  onTap: (){
//                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
//                  },
//                  child: ListTile(
//                    title: Text('Shopping Cart'),
//                    leading: Icon(Icons.shopping_cart,color: Colors.blue,),
//                  ),
//                ),
//                InkWell(
//                  onTap: (){},
//                  child: ListTile(
//                    title: Text('Favourites'),
//                    leading: Icon(Icons.favorite,color: Colors.blue,),
//                  ),
//                ),
//
//                Divider(),
//                InkWell(
//                  onTap: (){},
//                  child: ListTile(
//                    title: Text('Settings'),
//
//                    leading: Icon(Icons.settings),
//                  ),
//                ),
//
//                InkWell(
//                  onTap: (){},
//                  child: ListTile(
//                    title: Text('About'),
//                    leading: Icon(Icons.help),
//                  ),
//                ),
//                InkWell(
//                  onTap: (){
//                    Route route = MaterialPageRoute(builder: (c) => Login());
//                    Navigator.pushReplacement(context, route);
//                  },
//                  child: ListTile(
//                    title: Text('Logout'),
//                    leading: Icon(Icons.close),
//                  ),
//                )
//
//
//
//              ],
//            ),
//          ),
//          body: TabBarView(
//            children: [
//              HomePage(),
//              BorderStarPage(),
//              HalfStarPage(),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
class TopTabBarHidden extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: new MyHomePage(),

    );

  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  int SelectedPage=0;
  var TController;

  @override
  initState() {
    TController=new TabController(length: 3, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,

                    drawer: new Drawer(
              child: new ListView(
                children: <Widget>[
                  //header
                  new UserAccountsDrawerHeader(
                    accountName: Text('Sales Man BD'),
                    accountEmail: Text('salesmanbd.com'),

                    currentAccountPicture: GestureDetector(
                      child: new CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.person, color: Colors.white,),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue
                    ),
                  ),
                  // body
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('Home Page'),
                      leading: Icon(Icons.home,color: Colors.blue,),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => new TopTabBarHidden()));
                      },
                    ),

                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('My Account'),
                      leading: Icon(Icons.person,color: Colors.blue,),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('My Orders'),
                      leading: Icon(Icons.shopping_basket,color: Colors.blue,),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
                    },
                    child: ListTile(
                      title: Text('Shopping Cart'),
                      leading: Icon(Icons.shopping_cart,color: Colors.blue,
                      ),
                      onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
                      },

                    ),

                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('Favourites'),
                      leading: Icon(Icons.favorite,color: Colors.blue,),
                    ),
                  ),

                  Divider(),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('Settings'),

                      leading: Icon(Icons.settings),
                    ),
                  ),

                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('About'),
                      leading: Icon(Icons.help),
                    ),
                  ),
                  InkWell(
                    onTap: (){
//                      Route route = MaterialPageRoute(builder: (c) => Login());
//                      Navigator.pushReplacement(context, route);
                    },
                    child: ListTile(
                      title: Text('Go to SignUp'),
                      leading: Icon(Icons.settings_backup_restore),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => new SignUp()));
                      },
                    ),
                  ),
                  InkWell(
                    onTap: (){
//                      Route route = MaterialPageRoute(builder: (c) => Login());
//                      Navigator.pushReplacement(context, route);
                    },
                    child: ListTile(
                      title: Text('Logout'),
                      leading: Icon(Icons.close),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => new Login()));
                      },
                    ),
                  )
                ],
              ),
            ),

      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[


            SliverAppBar(
              // hide appbar shadow
              elevation: 0.1,
              backgroundColor: Colors.blue,
              title: Text('Sales Man BD'),

              actions: <Widget>[
                new IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                new IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
                    }),
              ],

              bottom:  TabBar(
                controller:TController,
                tabs: [
                  Tab(icon: Icon(Icons.border_all),text:'All',),
                  Tab(icon: Icon(Icons.security),text:'Security',),
                  Tab(icon: Icon(Icons.style),text:'Fashion',),
                ],
                onTap:(index){
                  setState(() {
                    SelectedPage=index;
                  });
                },
              ),
//              automaticallyImplyLeading: false,
              expandedHeight:50,
              floating: true,
              snap: true,
            ),
//            drawer: new Drawer(
//              child: new ListView(
//                children: <Widget>[
//                  //header
//                  new UserAccountsDrawerHeader(
//                    accountName: Text('Sales Man BD'),
//                    accountEmail: Text('salesmanbd.com'),
//
//                    currentAccountPicture: GestureDetector(
//                      child: new CircleAvatar(
//                        backgroundColor: Colors.grey,
//                        child: Icon(Icons.person, color: Colors.white,),
//                      ),
//                    ),
//                    decoration: BoxDecoration(
//                        color: Colors.red
//                    ),
//                  ),
//                  // body
//                  InkWell(
//                    onTap: (){},
//                    child: ListTile(
//                      title: Text('Home Page'),
//                      leading: Icon(Icons.home,color: Colors.red,),
//                    ),
//                  ),
//                  InkWell(
//                    onTap: (){},
//                    child: ListTile(
//                      title: Text('My Account'),
//                      leading: Icon(Icons.person,color: Colors.red,),
//                    ),
//                  ),
//                  InkWell(
//                    onTap: (){},
//                    child: ListTile(
//                      title: Text('My Orders'),
//                      leading: Icon(Icons.shopping_basket,color: Colors.red,),
//                    ),
//                  ),
//                  InkWell(
//                    onTap: (){
//                      Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
//                    },
//                    child: ListTile(
//                      title: Text('Shopping Cart'),
//                      leading: Icon(Icons.shopping_cart,color: Colors.red,),
//                    ),
//                  ),
//                  InkWell(
//                    onTap: (){},
//                    child: ListTile(
//                      title: Text('Favourites'),
//                      leading: Icon(Icons.favorite,color: Colors.red,),
//                    ),
//                  ),
//
//                  Divider(),
//                  InkWell(
//                    onTap: (){},
//                    child: ListTile(
//                      title: Text('Settings'),
//
//                      leading: Icon(Icons.settings),
//                    ),
//                  ),
//
//                  InkWell(
//                    onTap: (){},
//                    child: ListTile(
//                      title: Text('About'),
//                      leading: Icon(Icons.help),
//                    ),
//                  ),
//                  InkWell(
//                    onTap: (){
//                      Route route = MaterialPageRoute(builder: (c) => Login());
//                      Navigator.pushReplacement(context, route);
//                    },
//                    child: ListTile(
//                      title: Text('Logout'),
//                      leading: Icon(Icons.close),
//                    ),
//                  )
//
//
//
//                ],
//              ),
//            ),

          ];
        },
        body:
        (SelectedPage==0)?
        HomePage():
        (SelectedPage==1)?
        HalfStarPage():
        BorderStarPage(),

      ),

    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
//      width: double.infinity,
      height: 150.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/carousel/carousel1.jpeg'),
          AssetImage('images/carousel/carousel2.jpeg'),
          AssetImage('images/carousel/carousel3.jpeg'),
          AssetImage('images/carousel/carousel4.jpeg'),
          AssetImage('images/carousel/carousel5.jpeg'),

        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.grey,

      ),
    );
    return Scaffold(
      body: new Column(
        children: <Widget>[
          //  image carousel beings here
          image_carousel,
          // padding widget
          new Padding(padding: const EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Categories')),),
          // horizontal list view beings here
          HorizontalList(),

          // padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Recent Product')),),
          // Grid View

          Flexible(child: Products()),

        ],
      ),
    );
  }
}

class HalfStarPage extends StatefulWidget {
  @override
  _HalfStarPageState createState() => _HalfStarPageState();
}

class _HalfStarPageState extends State<HalfStarPage> {
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
//      width: double.infinity,
      height: 150.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/security_carousel/gms_image_carousel1.jpg'),
          AssetImage('images/security_carousel/gms_image_carousel2.jpg'),
          AssetImage('images/security_carousel/gms_image_carousel3.jpg'),
          AssetImage('images/security_carousel/gms_image_carousel4.jpg'),
          AssetImage('images/security_carousel/gms_image_carousel5.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.grey,

      ),
    );
    return Scaffold(

      body: new Column(
        children: <Widget>[
          //  image carousel beings here
          image_carousel,
          // padding widget
          new Padding(padding: const EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Categories')),),
          // horizontal list view beings here
          HorizontalList2(),

          // padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Recent Product')),),
          // Grid View

          Flexible(child: Products2()),

        ],
      ),
    );
  }
}

class BorderStarPage extends StatefulWidget {
  @override
  _BorderStarPageState createState() => _BorderStarPageState();
}

class _BorderStarPageState extends State<BorderStarPage> {
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
//      width: double.infinity,
      height: 150.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/fashion_carousel/fashion_carousel1.jpg'),
          AssetImage('images/fashion_carousel/fashion_carousel2.jpg'),
          AssetImage('images/fashion_carousel/fashion_carousel3.png'),
          AssetImage('images/fashion_carousel/fashion_carousel4.jpg'),
          AssetImage('images/fashion_carousel/fashion_carousel5.png'),


        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.grey,

      ),
    );
    return Scaffold(
      body: new Column(
        children: <Widget>[
          //  image carousel beings here
          image_carousel,
          // padding widget
          new Padding(padding: const EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Categories')),),
          // horizontal list view beings here
          HorizontalList3(),

          // padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Recent Product')),),
          // Grid View

          Flexible(child: Products3()),

        ],
      ),
    );
  }
}
