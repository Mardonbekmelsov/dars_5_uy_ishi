import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MakeTextButton extends StatelessWidget {
  String? text;
  bool? isSelected;

  MakeTextButton({required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text!,
        style: TextStyle(
            color:
                isSelected! ? Color.fromARGB(255, 52, 130, 90) : Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size.fromWidth(100),
          foregroundColor: Colors.blue,
          backgroundColor:
              isSelected! ? Colors.white : Color.fromARGB(255, 52, 130, 90)),
    );
  }
}
