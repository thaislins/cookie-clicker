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
        Text(getCookieCount()),
        IconButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          icon: Image.asset("images/cookie.png"),
        ),
      ],
    );
  }
}
