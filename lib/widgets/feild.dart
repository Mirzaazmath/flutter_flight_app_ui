import 'package:flutter/material.dart';
class Field extends StatelessWidget {
  final  TextEditingController controller;
  final String hinttext;
  final IconData icon;
  const Field({super.key, required this.controller, required this.hinttext, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 45,
      child: TextFormField(
        style:  TextStyle(color: Theme.of(context).canvasColor,fontSize: 17,fontWeight: FontWeight.bold,),
        controller: controller,
        decoration: InputDecoration(
          enabledBorder:  UnderlineInputBorder(
            borderSide:  BorderSide(color: Theme.of(context).canvasColor, width: 1.0),
          ),
          focusedBorder:   UnderlineInputBorder(
            borderSide:  BorderSide(color: Theme.of(context).canvasColor, width: 1.0),
          ),
          hintText: hinttext,
          hintStyle: TextStyle(color: Theme.of(context).canvasColor,fontWeight: FontWeight.bold,fontSize: 12),
          prefixIcon:Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(bottom: 10),
              height: 20,
              width: 30,
              decoration:  BoxDecoration(
                  border: Border(right: BorderSide(color:  Theme.of(context).canvasColor,width: 1))
              ),
              child: Icon(icon,color: Theme.of(context).indicatorColor,size: 20,),
            ),
          ),



        ),
      ),
    );
  }
}
