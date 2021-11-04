


   import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final IconData icon;


  const ButtonWidget({Key? key, required this.text, required this.icon,}) : super(key: key);

     @override
     Widget build(BuildContext context) {
       return ElevatedButton(onPressed: (){}, child: Row(
         children: [
           Icon(icon),
           Container(
             width: 80,
             height: 20,
             child: Text(text,textAlign: TextAlign.center,),
           ),
         ],
       ),
       );
     }
   }
