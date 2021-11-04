
import 'package:flutter/material.dart';

class InformationBox extends StatelessWidget {

  final String number;
  final String name;

  const InformationBox({ required this.number, required this.name}) : super();

  @override
  Widget build(BuildContext context) {


    return Container(
      margin: const EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text(number, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))),
          SizedBox(height: 10),
          Text(name, textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
