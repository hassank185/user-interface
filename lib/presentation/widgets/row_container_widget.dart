


import 'package:flutter/material.dart';

class RowContainerWidget extends StatelessWidget {
  const RowContainerWidget({Key? key, required this.text}) : super(key: key);
  final String  text;



  @override
  Widget build(BuildContext context) {
    return  Padding(
     // padding: const EdgeInsets.only(left: 15,right: 15),
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center
          ),
        ),
      ),
    );
  }
}

