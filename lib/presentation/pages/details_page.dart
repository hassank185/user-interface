import 'package:designing_task/presentation/widgets/decorated_container_widget.dart';
import 'package:designing_task/presentation/widgets/home_text_widget.dart';
import 'package:designing_task/presentation/widgets/information_box_widget.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double padding = 10;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/image_1.jpg'),
                        Positioned(
                          width: size.width,
                          child: Padding(
                            padding: sidePadding,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: DecoratedContainer(
                                    icon: Icons.arrow_back,
                                    color: Colors.white,
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                DecoratedContainer(
                                  icon: Icons.favorite_border,
                                  color: Colors.white,
                                  width: 50,
                                  height: 50,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: sidePadding,
                              child: Text(
                                "140,000 Pkr",
                                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("354 RockWood SF"),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 70),
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey)),
                          child: Center(child: Text("20 Hours")),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: sidePadding,
                      child: Text(
                        "House Information",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20,),
                    SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InformationBox(number: "1500", name: "Square Foot"),
                            SizedBox(width: 10),
                            InformationBox(number: "4", name: "Bedrooms"),
                            SizedBox(width: 10),
                            InformationBox(number: "2", name: "Bathrooms"),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: InformationBox(number: "2", name: "Gerage"),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                    ),
                    SizedBox(height: 30,),
                   HomeTextWidget()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
