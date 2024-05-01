import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/image1.png",
                width: 60,
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  const Text(
                    "From Ahmad Mughal",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "20 Jan 2024 at 10:00 pm",
                    style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
                  )
                ],
              ),
            ],
          ),
          Text("+\$3,456.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)
        ],
      ),
    );
  }
}
