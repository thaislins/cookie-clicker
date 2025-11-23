import 'package:flutter/material.dart';

class CookieClicker extends StatefulWidget {
  const CookieClicker({super.key});

  @override
  State<CookieClicker> createState() => _CookieClickerState();
}

class _CookieClickerState extends State<CookieClicker> {
  int count = 0;

  String getCookieCount() {
    if (count == 1) {
      return "$count cookie";
    } else {
      return "$count cookies";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.yellow, // background color
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            getCookieCount(),
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),

        IconButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          icon: Image.asset("images/cookie.png"),
        ),

        TextButton(
          onPressed: () {
            setState(() {
              count = 0;
            });
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.yellow),
          ),
          child: Text("Reset Counter"),
        ),
      ],
    );
  }
}
