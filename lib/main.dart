import 'package:flutter/material.dart';
import 'package:lost_and_found/Screens/ForgetPage.dart';
import 'package:lost_and_found/Screens/LoginPage.dart';
import 'package:lost_and_found/Screens/SignUp.dart';
import 'package:lost_and_found/Screens/form.dart';
import 'package:lost_and_found/Screens/home.dart';
import 'package:lost_and_found/Screens/navbar.dart';
import 'package:lost_and_found/Screens/request_page.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: HomePageScreen(),
  ));
}