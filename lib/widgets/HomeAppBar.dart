import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:shopping/screens/additem.dart';

class Homeappbar extends StatefulWidget {
  const Homeappbar({Key? key}) : super(key: key);

  @override
  State<Homeappbar> createState() => _HomeappbarState();
}

class _HomeappbarState extends State<Homeappbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(children: [
        Icon(
          Icons.sort,
          size: 30,
          color: Color(0xFF4C53A5),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "DP Shop",
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5)),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Additem(),
                ),
              );
            },
            child: Icon(
              Icons.add,
              size: 40,
              color: Color(0xFF4C53A5),
            ),
          ),
        ),
        Badge(
          badgeColor: Colors.red,
          padding: EdgeInsets.all(7),
          badgeContent: Text("4"),
          child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "Cartpage");
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Color(0xFF4C53A5),
              )),
        ),
      ]),
    );
  }
}
