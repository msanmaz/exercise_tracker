import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List<Widget>.generate(
          2,
          (index) => Container(
                width: 40.0,
                height: 40.0,
                color: Colors.white,
              )),
    );
  }
}
