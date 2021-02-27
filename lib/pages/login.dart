
import 'package:flutter/material.dart';
import 'package:sales_man_bd/pages/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GoogleSignIn googleSignIn = new GoogleSignIn();
//  final FirebaseAuth firebaseAuth=FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

//    final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  SharedPreferences preferences;
  bool loading = false;
  bool isLogedin = false;

  @override
  void initState() {
    super.initState();
    isSingedIn();
  }

  void isSingedIn() async {
    setState(() {
      loading = false;
    });

    await _auth.currentUser().then((user){
      if(user != null){
        setState(() => isLogedin = true);
      }

    });
//    preferences = await SharedPreferences.getInstance();
//    isLogedin = await googleSignIn.isSignedIn();
    if (isLogedin) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => new TopTabBarHidden()));
    }
  }

//    Future<FirebaseUser> signWithUser() async {
//    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
//    final GoogleSignInAuthentication googleSignInAuthentication =
//    await googleSignInAccount.authentication;
//    final AuthCredential credential = GoogleAuthProvider.getCredential(idToken: googleSignInAuthentication.idToken, accessToken: googleSignInAuthentication.accessToken);
//    final AuthResult authResult = await _auth.signInWithCredential(credential);
//    final FirebaseUser user = authResult.user;
//
//    assert(!user.isAnonymous);
//    assert(await user.getIdToken() != null);
//    final FirebaseUser currentUser = await _auth.currentUser();
//    assert(currentUser.uid == user.uid);
//    return user;

//  Future<FirebaseUser> handleSignIn() async {
//    preferences = await SharedPreferences.getInstance();
//    setState(() {
//      loading = true;
//    });
//    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
//    final GoogleSignInAuthentication googleSignInAuthentication =
//        await googleSignInAccount.authentication;
//    final AuthCredential credential = GoogleAuthProvider.getCredential(
//        idToken: googleSignInAuthentication.idToken,
//        accessToken: googleSignInAuthentication.accessToken);
//    final AuthResult authResult = await _auth.signInWithCredential(credential);
//    final FirebaseUser user = authResult.user;
////
//    assert(!user.isAnonymous);
//    assert(await user.getIdToken() != null);
//    final FirebaseUser currentUser = await _auth.currentUser();
//    assert(currentUser.uid == user.uid);
////    return user;
//
////    FirebaseUser firebaseUser = await firebaseAuth.singInWithGoogle(
////      FirebaseUser firebaseUser = await firebaseAuth.signInWithGoogle(
////          idToken: googleSignInAuthentication.idToken,
////          accessToken: googleSignInAuthentication.accessToken);
//    if (currentUser != null) {
//      final QuerySnapshot result = await Firestore.instance
//          .collection("user")
//          .where("id", isEqualTo: currentUser.uid)
//          .getDocuments();
//      final List<DocumentSnapshot> documents = result.documents;
//      if (documents.length == 0) {
//        // insert the user our collection
//        Firestore.instance
//            .collection("user")
//            .document(currentUser.uid)
//            .setData({
//          "id": currentUser.uid,
//          "username": currentUser.displayName,
//          "profilePicture": currentUser.photoUrl,
//        });
//        await preferences.setString("id", currentUser.uid);
//        await preferences.setString("username", currentUser.displayName);
//        await preferences.setString("photoUrl", currentUser.displayName);
//      } else {
//        await preferences.setString("id", documents[0]['id']);
//        await preferences.setString("username", documents[0]['username']);
//        await preferences.setString("photoUrl", documents[0]['photoUrl']);
//      }
//      Fluttertoast.showToast(msg: "Login Successful");
//      setState(() {
//        loading = false;
//      });
//      Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex) => HomePage()));
//    } else {
//    Fluttertoast.showToast(msg: "Login Failed :(");
//  }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.white,
//        centerTitle: true,
//        title: new Text("Login", style: TextStyle(color: Colors.red.shade900),),
//        elevation: 0.5,
//      ),
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
                width: 300.0,
                height: 300.0,
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
                        padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
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
                              ),
                              validator: (value) {
                                Pattern pattern =
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)")|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
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
                        padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white.withOpacity(0.8),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: TextFormField(
                              controller: _passwordTextController,
                              decoration: InputDecoration(
                                hintText: "Password",
                                icon: Icon(Icons.lock_outline),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "The password filed can not be empty";
                                } else if (value.length < 6) {
                                  return "the password has to be at least 6 characters long";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                        child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.blue.withOpacity(0.8),
                            elevation: 0.0,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => new TopTabBarHidden()));
//                                handleSignIn();
                              },
                              minWidth: MediaQuery.of(context).size.width,
                              child: Text(
                                "Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Forget Password",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),

//                        Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                          },
                            child: Text("Sign up", textAlign: TextAlign.center, style: TextStyle(color: Colors.red)))
                      ),
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
}
