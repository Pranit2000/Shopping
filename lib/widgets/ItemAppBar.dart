import 'package:flutter/material.dart';

class ItemAppBar extends StatefulWidget {
  const ItemAppBar({Key? key}) : super(key: key);

  @override
  State<ItemAppBar> createState() => _ItemAppBarState();
}

class _ItemAppBarState extends State<ItemAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Color(0xFF4C53A5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Product",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C53A5),
                ),
              ),
            ),
            Spacer(),
            Icon(
              Icons.favorite,
              size: 30,
              color: Colors.red,
            )
          ],
        ));
  }
}
