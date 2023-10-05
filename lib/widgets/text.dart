import 'package:flutter/material.dart';
class TextUtil extends StatelessWidget {
  String text;
  Color? color;
  double? size;
  bool? weight;
  TextUtil({super.key,required this.text,this.size,this.color,this.weight});

  @override
  Widget build(BuildContext context) {
    return  Text(text,

      style: TextStyle(color:color?? Theme.of(context).canvasColor,fontSize:size?? 18,
          fontWeight:weight==null?FontWeight.normal: FontWeight.bold
      ),);
  }
}