import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/widgets/HomeAppBar.dart';
import 'package:shopping/widgets/catagories.dart';
import 'package:shopping/widgets/itemwidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Homeappbar(),
        Container(
          // height: 500,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35))),
          child: Column(
            children: [
              //Search widget
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Here...."),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.camera_alt,
                    size: 27,
                    color: Color(0xFF4C53A5),
                  ),
                ]),
              ),
              //catagories
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Catageries",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5)),
                ),
              ),
              //catagaries
              catogorieswidget(),

              //Items
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5)),
                ),
              ),

              //Itemwidget
              Itemwidget()
            ],
          ),
        ),
      ]),
      bottomNavigationBar: CurvedNavigationBar(
        onTap:(index){},
        height: 70,
        backgroundColor: Colors.transparent,
        color: Color(0xFF4C53A5),
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon( 
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ],
        
      ),
    );
  }
}
