import 'package:flutter/material.dart';

class catogorieswidget extends StatefulWidget {
  const catogorieswidget({Key? key}) : super(key: key);

  @override
  State<catogorieswidget> createState() => _catogorieswidgetState();
}

class _catogorieswidgetState extends State<catogorieswidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i=1;i<=7;i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/$i.png",
                  height: 40,
                  width: 40,
                ),
                Text(
                  "sandal",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xFF4C53A5)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
