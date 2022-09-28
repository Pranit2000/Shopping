import 'package:flutter/material.dart';
import 'package:shopping/screens/Loginscreen.dart';
import 'package:shopping/screens/Registerpage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Welcome",
            style: TextStyle(
                fontSize: 30,
                color: Color(0xFF4C53A5),
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5, left: 5),
            child: Container(
              child: Image.asset(
                "images/DameMobile.png",
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                color: Color(0xFF4C53A5),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Loginscreen(),
                    ),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Color(0xFFEDECF2),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                color: Colors.grey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Registerscreen(),
                    ),
                  );
                },
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: Color(0xFFEDECF2),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
