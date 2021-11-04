


import 'package:flutter/material.dart';

class DecoratedContainer extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double width;
  final double height;

  const DecoratedContainer({Key? key, required this.icon, required this.color, required this.width, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 25,right: 25,top: 40),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)
      ),
      child: Icon(icon),
    );
  }
}
