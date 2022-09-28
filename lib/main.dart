import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopping/screens/Cartpage.dart';
import 'package:shopping/screens/Homepage.dart';
import 'package:shopping/screens/ItemPage.dart';
import 'package:shopping/screens/Loginscreen.dart';
import 'package:shopping/screens/Registerpage.dart';
import 'package:shopping/screens/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: Color(0xFF4C53A5),
            scaffoldBackgroundColor: Colors.white),
        routes: {
          "/": (context) => Splashscreen(),
          "Loginpage": (context) => Loginscreen(),
          "Registerpage": (context) => Registerscreen(),
          "Homepage": (context) => Homepage(),
          "Cartpage": (context) => Cartpage(),
          "itemPage": (context) => ItemPage(),
        });
  }
}
