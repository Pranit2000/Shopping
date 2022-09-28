import 'package:flutter/material.dart';
import 'package:shopping/widgets/CartAppBar.dart';
import 'package:shopping/widgets/CartBottomNavBar.dart';
import 'package:shopping/widgets/CartItemsSamples.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                CartItemsSamples(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Add Coupen Code",
                        style: TextStyle(
                            color: Color(0xFF4C53A5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
