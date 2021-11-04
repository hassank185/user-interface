import 'package:designing_task/presentation/pages/details_page.dart';
import 'package:designing_task/presentation/widgets/button_widget.dart';
import 'package:designing_task/presentation/widgets/decorated_container_widget.dart';
import 'package:designing_task/presentation/widgets/list_view_container_widget.dart';
import 'package:designing_task/presentation/widgets/row_container_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, this.itemData}) : super(key: key);
  final dynamic itemData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DecoratedContainer(icon: Icons.menu, color: Colors.white, width: 50, height: 50,),
                  DecoratedContainer(icon: Icons.settings, color: Colors.white, width: 50, height: 50,),
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text("City"),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        "San Francisco",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                      ))
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 2,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RowContainerWidget(text: '220,000',),
                      SizedBox(width: 0.1,),
                      RowContainerWidget(text: 'For Sale',),
                      SizedBox(width: 0.1,),
                      RowContainerWidget(text: '3-4 Beds',),
                      SizedBox(width: 0.1,),
                      RowContainerWidget(text: "Something",),
                    ],
                  ),
                ),
              Expanded(
                child: ListView.builder(itemCount: 2,itemBuilder: (context, index){
                  return InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                  },child: ListViewContainerWidget(image:"assets/image_1.jpg"));
                }),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 115),
              child: ButtonWidget(icon: Icons.map,text: "Map View")
            ),

          ),
        ],
      ),
    );
  }
}
