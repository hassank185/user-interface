import 'package:flutter/material.dart';

class ListViewContainerWidget extends StatelessWidget {

  final String image;
  const ListViewContainerWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
          height: 200,
          child: ClipRRect(borderRadius: BorderRadius.circular(50),child: Image.asset(image)) ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "29,000,000 Pkr",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text("Jenison, Mi 49428, SF"),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "4 Bedrooms / 2 Bathrooms / 1416 sqft",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ],
    );
  }
}
