import 'package:flutter/material.dart';

class CookieClicker extends StatefulWidget {
  const CookieClicker({super.key});

  @override
  State<CookieClicker> createState() => _CookieClickerState();
}

class _CookieClickerState extends State<CookieClicker> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Count: $count'),
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
