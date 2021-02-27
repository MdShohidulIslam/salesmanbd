
//import 'package:daraz/pages/home.dart';
//import 'package:daraz/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:sales_man_bd/pages/home.dart';
import 'package:sales_man_bd/pages/login.dart';
import 'package:sales_man_bd/welcome_adds/welcome_adds.dart';


void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.red.shade900
    ),
    home: Welcome_Page(),
  ));
}