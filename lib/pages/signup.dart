import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import '../db/users.dart';
import 'home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  // using mysql code

//  get http => null;
//
//  getMethod() async{
//    String theUrl = 'http://192.168.43.77/localhost/getData.php';
//    var res = await http.get(Uri.encodeFull(theUrl), headers: {"Accept":"application.json"});
//    var responsBody = json.decode(res.body);
//    print(responsBody);
//    return responsBody;
//  }
//
//  TextEditingController usernameControl = TextEditingController();
//  String get usernameEmail => usernameControl.text;
//
//  TextEditingController passwordControl = TextEditingController();
//  String get passwordCheck => passwordControl.text;
//
//  insertMethod() async{
//    String theUrl = "http://192.168.43.77/sales_man_bd/adddata.php";
//    var res = await http.post(Uri.encodeFull(theUrl), headers: {"Accept":"application/json"},
//
//        body: {
//          "full_name":_nameTextController,
//          "password":_passwordTextController,
//        }
//    );
//    var respBody = json.decode(res.body);
//    print(respBody);
//
//  }
//
//  updateMethod() async{
//    String theUrl = "http://192.168.43.77/flutter_mysql/UpdateData.php";
//    var res = await http.post(Uri.encodeFull(theUrl), headers: {"Accept":"application/json"},
//        body: {
//          "u_name":usernameEmail,
//          "passed":passwordCheck,
//        }
//    );
//    var respBody = json.decode(res.body);
//    print(respBody);
//  }
//
//  deleteMethod() async{
//    String theUrl = "http://192.168.43.77/flutter_mysql/Delete Data.php";
//    var res = await http.post(Uri.encodeFull(theUrl), headers: {"Accept":"application/json"},
//
////        body: {
////          "u_name":usernameEmail,
////          "passed":passwordCheck,
////        }
//    );
//    var respBody = json.decode(res.body);
//    print(respBody);
//
//  }


  // using firebase code
  final _formKey = GlobalKey<FormState>();
  UserService _userService = UserService();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

//  String displayName;
////  String email;
////  String uid;
  String gender;

  String groupValue = "Male";
  bool hidePass = true;
  bool loading = false;

//    final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/icon.png',
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'images/icon.png',
                width: 150.0,
                height: 240.0,
              )),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Center(
                child: Form(
                  key: _formKey,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.8),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              controller: _nameTextController,
                              decoration: InputDecoration(
                                  hintText: "Full name",
                                  icon: Icon(Icons.person_outline),
                                  border: InputBorder.none),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "The name filed can not be empty";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.8),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              controller: _emailTextController,
                              decoration: InputDecoration(
                                  hintText: "Email",
                                  icon: Icon(Icons.alternate_email),
                                  border: InputBorder.none),
                              validator: (value) {
                                Pattern pattern =
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                RegExp regex = new RegExp(pattern);
                                if (!regex.hasMatch(value))
                                  return 'Please make sure your email address';
                                else
                                  return null;
                              },
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: new Container(
                          color: Colors.white.withOpacity(0.4),
                          child: Row(
                            children: [
                              Expanded(
                                  child: ListTile(
                                title: Text(
                                  "Male",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(color: Colors.white),
                                ),
                                trailing: Radio(
                                    value: "Fe-Male",
                                    groupValue: groupValue,
                                    onChanged: (e) => valueChanged(e)),
                              )),
                              Expanded(
                                  child: ListTile(
                                title: Text(
                                  "Female",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(color: Colors.white),
                                ),
                                trailing: Radio(
                                    value: "Female",
                                    groupValue: groupValue,
                                    onChanged: (e) => valueChanged(e)),
                              )),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.8),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: ListTile(
                              title: TextFormField(
                                controller: _passwordTextController,
                                obscureText: hidePass,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    icon: Icon(Icons.lock_outline),
                                    border: InputBorder.none),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "The password filed can not be empty";
                                  } else if (value.length < 6) {
                                    return "the password has to be at least 6 characters long";
                                  }
                                  return null;
                                },
                              ),
                              trailing: IconButton(
                                  icon: Icon(Icons.remove_red_eye),
                                  onPressed: () {
                                    setState(() {
                                      hidePass = false;
                                    });
                                  }),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.8),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: ListTile(
                              title: TextFormField(
                                controller: _confirmPasswordController,
                                obscureText: hidePass,
                                decoration: InputDecoration(
                                    hintText: "Confirm Password",
                                    icon: Icon(Icons.lock_outline),
                                    border: InputBorder.none),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "The password filed can not be empty";
                                  } else if (value.length < 6) {
                                    return "the password has to be at least 6 characters long";
                                  } else if (_passwordTextController.text !=
                                      value) {
                                    return "The password do not match";
                                  }
                                  return null;
                                },
                              ),
                              trailing: IconButton(
                                  icon: Icon(Icons.remove_red_eye),
                                  onPressed: () {
                                    setState(() {
                                      hidePass = false;
                                    });
                                  }),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.red.shade700,
                            elevation: 0.0,
                            child: MaterialButton(
                              onPressed: () async{
                                validateForm();
                              },
                              minWidth: MediaQuery.of(context).size.width,
                              child: Text(
                                "Sign Up",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            )),
                      ),

//                        Expanded(child: Container()),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text("Login",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.blue)))),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: loading ?? true,
            child: Container(
              color: Colors.white.withOpacity(0.7),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              ),
            ),
          )
        ],
      ),
    );
  }

  valueChanged(e) {
    setState(() {
      if (e == "Male") {
        groupValue = e;
        gender = e;
      } else if (e == "Female") {
        groupValue = e;
        gender = e;
      }
    });
  }

  Future validateForm() async {
    FormState formState = _formKey.currentState;
//    Map value;
    if (formState.validate()) {
      formState.reset();
      FirebaseUser currentUser = await _auth.currentUser();
      if (currentUser == null) {

        _auth
            .createUserWithEmailAndPassword(
                email: _emailTextController.text,
                password: _passwordTextController.text)
            .then((user) => {
              _userService.createUser(

                  {
                    "username": _nameTextController.text,
                    "email": _emailTextController.text,
                    "userId": currentUser.uid,
                    "gender": gender,

                  }
              )
        }).catchError((err) => {print(err.toString())});
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => new TopTabBarHidden()));
//        insertMethod();

      }
    }
  }
}

// using mysql database

//class InsertUpdateDelete extends StatefulWidget {
//  @override
//  _InsertUpdateDeleteState createState() => _InsertUpdateDeleteState();
//}
//
//class _InsertUpdateDeleteState extends State<InsertUpdateDelete> {
//
//  TextEditingController usernameControl = TextEditingController();
//  String get usernameEmail => usernameControl.text;
//
//  TextEditingController passwordControl = TextEditingController();
//  String get passwordCheck => passwordControl.text;
//
//  get http => null;
//
//  insertMethod() async{
//    String theUrl = "http://192.168.43.77/flutter_mysql/InsertData.php";
//    var res = await http.post(Uri.encodeFull(theUrl), headers: {"Accept":"application/json"},
//
//        body: {
//          "u_name":usernameEmail,
//          "passed":passwordCheck,
//        }
//    );
//    var respBody = json.decode(res.body);
//    print(respBody);
//
//  }
//
//
//  updateMethod() async{
//    String theUrl = "http://192.168.43.77/flutter_mysql/UpdateData.php";
//    var res = await http.post(Uri.encodeFull(theUrl), headers: {"Accept":"application/json"},
//        body: {
//          "u_name":usernameEmail,
//          "passed":passwordCheck,
//        }
//    );
//    var respBody = json.decode(res.body);
//    print(respBody);
//  }
//
//  deleteMethod() async{
//    String theUrl = "http://192.168.43.77/flutter_mysql/Delete Data.php";
//    var res = await http.post(Uri.encodeFull(theUrl), headers: {"Accept":"application/json"},
//
////        body: {
////          "u_name":usernameEmail,
////          "passed":passwordCheck,
////        }
//    );
//    var respBody = json.decode(res.body);
//    print(respBody);
//
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        leading: IconButton(
//          icon: Icon(CupertinoIcons.back),
//          onPressed: () {
//            Navigator.pop(context);
//          },
//        ),
//        title: Text("Insert Update Delete"),
//      ),
//      body: ListView(
//        children: <Widget>[
//          SizedBox(
//            height: 150.0,
//          ),
//          TextField(
//            controller: usernameControl,
//            decoration: InputDecoration(
//                hintText: "User Name"
//            ),
//          ),
//
//          TextField(
//            controller: passwordControl,
//            decoration: InputDecoration(
//                hintText: "Password"
//            ),
//          ),
//
//          RaisedButton(
//            child: Text("Insert"),
//            onPressed: (){
//              insertMethod();
//            },
//          ),
//          RaisedButton(
//            child: Text("Update"),
//            onPressed: (){
//              updateMethod();
//            },
//          ),
//          RaisedButton(
//            child: Text("Delete"),
//            onPressed: (){
//              deleteMethod();
//            },
//          ),
//          RaisedButton(
//            child: Text("Exit"),
//            onPressed: (){
//
//            },
//          ),
//        ],
//      ),
//    );
//  }
//}
