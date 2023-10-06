import 'package:flutter/material.dart';

import '../../widgets/text.dart';
import 'add_flight_tab.dart';
class AddFlightScreen extends StatelessWidget {
  const AddFlightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        elevation: 0,
        leading: GestureDetector(
            onTap: ()=>Navigator.pop(context),
            child: Icon(Icons.arrow_back_outlined,color: Theme.of(context).canvasColor,)),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("assets/profile.png"),
                )
            ),

          ),
          const SizedBox(width: 20,),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            padding:const  EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            height: 60,
            alignment: Alignment.centerLeft,
            child: TextUtil(text: "Add Flight",color: Theme.of(context).primaryColor,weight: true,size: 28,),
          ),
          Expanded(child: Container(
          //  padding:const  EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius:const  BorderRadius.vertical(top: Radius.circular(30))
            ),
            alignment: Alignment.topCenter,
            child:const Padding(
              padding:  EdgeInsets.only(top: 10),
              child: BookingTabBar(),



            ),

          ))
        ],
      ),


    );
  }
}
