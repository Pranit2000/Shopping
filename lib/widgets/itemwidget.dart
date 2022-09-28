import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class Itemwidget extends StatefulWidget {
  const Itemwidget({Key? key}) : super(key: key);

  @override
  State<Itemwidget> createState() => _ItemwidgetState();
}

class _ItemwidgetState extends State<Itemwidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.63,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i=1;i<8;i++)
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFF4C53A5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-50%",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/$i.png",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product Title",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF4C53A5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Write a Decription about the product",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\₹200",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Icon(Icons.shopping_cart_checkout,color: Color(0xFF4C53A5),)
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
