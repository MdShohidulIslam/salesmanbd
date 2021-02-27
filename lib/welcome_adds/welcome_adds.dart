import 'package:flutter/material.dart';
import 'package:sales_man_bd/pages/login.dart';

void main() {
  runApp(Welcome_Page());
}

class Welcome_Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      home: UISample13(),
    );
  }
}


class UISample13 extends StatefulWidget{
  PageSelectorTest2State createState() => PageSelectorTest2State();
}

class PageSelectorTest2State extends State<UISample13> {
  int SelectedIndexPage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:DefaultTabController(
          length:3,  //Kam Saf7a
          child: Builder(
              builder: (BuildContext context ) => SingleChildScrollView(
                child:Stack(
                  children: [
                    Container(
                      width:MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child:

                      TabBarView(
                        physics:NeverScrollableScrollPhysics(),
                        children: [

                          Container(
                              width:MediaQuery.of(context).size.width,
                              height:MediaQuery.of(context).size.height,
                              color: Colors.white,
                              child:Column(
                                children: [
                                  SizedBox(height:MediaQuery.of(context).size.width*0.15,),
                                  Image.asset("images/icon.png",width:200,height:200,),
                                  SizedBox(height:MediaQuery.of(context).size.width*0.1,),
                                  Text("Destination",style: TextStyle(color: Colors.deepPurple[900],fontWeight:FontWeight.bold,fontSize: 20),),
                                  SizedBox(height:15,),
                                  Text("There are many variation of passages ",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                  Text("of lorem ipsum available but the ",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                  Text("majoriti have suffered atteration in",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                  Text("some form ",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                ],
                              )
                          ),


                          Container(
                              width:MediaQuery.of(context).size.width,
                              height:MediaQuery.of(context).size.height,
                              color: Colors.white,
                              child:Column(
                                children: [
                                  SizedBox(height:MediaQuery.of(context).size.width*0.2,),
                                  Image.asset("images/icon2.png",width:200,height:200,),
                                  SizedBox(height:MediaQuery.of(context).size.width*0.1,),
                                  Text("Ticket Booking",style: TextStyle(color: Colors.deepPurple[900],fontWeight:FontWeight.bold,fontSize: 20),),
                                  SizedBox(height:15,),
                                  Text("Contray to popular belief,Lorem ipsum! ",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                  Text("is not simply random text. it has roots in",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                  Text("a piece of classical latin literature from",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                  Text("45 BC.making it over 2000 years old.",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                ],
                              )
                          ),

                          Container(
                              width:MediaQuery.of(context).size.width,
                              height:MediaQuery.of(context).size.height,
                              color: Colors.white,
                              child:Column(
                                children: [
                                  SizedBox(height:MediaQuery.of(context).size.width*0.2,),
                                  Image.asset("images/icon3.png",width:200,height:200,),
                                  SizedBox(height:MediaQuery.of(context).size.width*0.1,),
                                  Text("Enjoy Your Holiday ",style: TextStyle(color: Colors.deepPurple[900],fontWeight:FontWeight.bold,fontSize: 20),),
                                  SizedBox(height:15,),
                                  Text("There are many variation of passages  ",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                  Text("of lorem ipsum available but the  ",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                  Text("majoriti have suffered atteration in ",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                  Text("some form",style: TextStyle(color: Colors.grey,fontSize: 15),),

                                ],
                              )
                          ),



                        ],
                      ),
                    ),
                    Container(
                      width:MediaQuery.of(context).size.width,
                      height:MediaQuery.of(context).size.height,
                      child:Column(
                        children: [
                          SizedBox(height:MediaQuery.of(context).size.height*0.73),
                          TabPageSelector(
                            color:Colors.grey,
                            selectedColor:Colors.deepPurple[900],
                          ),
                          SizedBox(height:MediaQuery.of(context).size.height*0.04),
                          GestureDetector(
                            onTap:(){
                              final TabController controller = DefaultTabController.of(context);
                              if(!controller.indexIsChanging && controller.index != 2){
                                controller.animateTo(controller.index+1);
                              }
                              setState(() {
                                SelectedIndexPage++;
                                print(SelectedIndexPage);
                              });
                              if(SelectedIndexPage>=3){
                                //Do
                                // when next button click 3
                                Navigator.push(context, MaterialPageRoute(builder: (context) => new Login()));
                              }
                            },
                            child: Container(
                              width: 150,
                              height: 50,
                              child:Center(
                                child:Text("Next",style: TextStyle(color: Colors.white,),textAlign: TextAlign.center,),

                              ),
                              decoration:BoxDecoration(
                                color:Colors.deepPurple[900],
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                          ),
                          Expanded(
                            child:Align(
                              alignment:Alignment.bottomRight,
                              child:FlatButton(
                                child:Text("Skip and Go to Login Page"),
                                onPressed:(){

                                  Navigator.push(context, MaterialPageRoute(builder: (context) => new Login()));


                                },
                              ),
                            ),
                          )

                        ],
                      ),
                    )



                  ],
                ),
              )



          ),
        )

    );

  }

}


