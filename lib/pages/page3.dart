import 'package:dars_5_uy_ishi/functions/chart.dart';
import 'package:dars_5_uy_ishi/functions/textButton.dart';
import 'package:dars_5_uy_ishi/pages/page1.dart';
import 'package:dars_5_uy_ishi/pages/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page_3 extends StatelessWidget {
  List<Map<String, dynamic>> text_buttons = [
    {"text": "24h", "isSelected": false},
    {"text": "Week", "isSelected": true},
    {"text": "Month", "isSelected": false},
    {"text": "Year", "isSelected": false},
    {"text": "Tune", "isSelected": false},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    CupertinoIcons.back,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Cards",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.save_alt,
                        color: Colors.green.shade700,
                      ),
                      Text(
                        "Add",
                        style: TextStyle(
                            color: Colors.green.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.only(left: 16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var button in text_buttons)
                      MakeTextButton(
                          text: button["text"],
                          isSelected: button["isSelected"])
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Your Expenses",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Image.asset(
              "assets/images/chart.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Chart()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page_1()));
              },
              icon: Icon(Icons.home, size: 30),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page_2()));
              },
              icon: Icon(Icons.business, size: 30),
            ),
            label: 'Statistic',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page_3()));
              },
              icon: Icon(Icons.money, size: 30),
            ),
            label: 'Money',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
