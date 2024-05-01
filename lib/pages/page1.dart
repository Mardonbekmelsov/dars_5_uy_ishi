import 'package:dars_5_uy_ishi/functions/send_button.dart';
import 'package:dars_5_uy_ishi/functions/transactions.dart';
import 'package:dars_5_uy_ishi/pages/page2.dart';
import 'package:dars_5_uy_ishi/pages/page3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset("assets/images/profile_icon.jpg"),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "SHAHZAIB",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "Good Morning",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                IconButton(
                  icon: const Icon(
                    CupertinoIcons.bell,
                    size: 40,
                  ),
                  onPressed: () {},
                  iconSize: 30,
                )
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 148, 209, 190),
                      spreadRadius: 3,
                      blurRadius: 10,
                      // offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Your Total Balance",
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$7899,00",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade800),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        maximumSize: const Size.fromWidth(100),
                        shape: const LinearBorder()),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hide",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Icon(
                          CupertinoIcons.eye_slash,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [for (var i = 0; i < 3; i++) SendButton()],
            ),
            const SizedBox(
              height: 35,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Recent Transaction",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [for (var i = 0; i < 10; i++) Transaction()],
                ),
              ),
            ),
          ],
        ),
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
