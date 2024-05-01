import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: const Color(0xFF4A9F78),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
        onPressed: () {},
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              CupertinoIcons.location,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Send",
              style: TextStyle(fontSize: 23, color: Colors.white),
            )
          ],
        ));
  }
}
