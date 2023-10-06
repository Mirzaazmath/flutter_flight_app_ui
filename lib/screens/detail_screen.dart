import 'package:flutter/material.dart';

import '../data/flight_data.dart';
import '../widgets/show_up_animation.dart';
import '../widgets/text.dart';
class DetailScreen extends StatelessWidget {
  FlightItem data;
  int index;

  DetailScreen({super.key,required this.data,required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Theme.of(context).primaryColor,
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
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
        const SizedBox(height: 10,),
          Container(
            padding:const  EdgeInsets.symmetric(horizontal: 30,),
            height: 80,
            alignment: Alignment.centerLeft,
            child:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextUtil(text: data.source,color: Theme.of(context).indicatorColor,size: 28,),
                    const  SizedBox(height: 5,),
                    TextUtil(text: data.sourceName,color: Colors.white,size:12,weight: true,)
                  ],
                ),
                Container(
                  height: 60,
                  width: 60,
                  padding:const  EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops:const  [
                            0.5,0.5
                          ],
                          colors:[
                            Theme.of(context).canvasColor,
                            Theme.of(context).primaryColor,
                          ]
                      )
                  ),

                  child:    Container(
                    padding: const EdgeInsets.only(top: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor,
                    ),

                    child: Column(
                      children: [
                        Hero(
                          tag: "hero$index",
                          child: Transform.rotate(
                              angle: 6,
                              child: Icon(Icons.flight_takeoff,size: 25,color: Theme.of(context).indicatorColor,)),
                        ),
                        const  SizedBox(height: 5,),
                        TextUtil(text: data.duration,color: Colors.white,size:11,weight: true,)

                      ],
                    ),

                  ),

                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextUtil(text: data.destination,color: Theme.of(context).indicatorColor,size: 28,),
                    const  SizedBox(height: 5,),
                    TextUtil(text: data.destinationName,color: Colors.white,size:12,weight: true,)
                  ],
                )
              ],
            ),

          ),
          Expanded(child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),

            decoration:const  BoxDecoration(
                color:Colors.white,
                borderRadius:  BorderRadius.vertical(top: Radius.circular(30),bottom:Radius.circular(20) )
            ),
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 ShowUpAnimation(
                   delay: 200,
                   child: Container(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Column(
                       children: [

                         Padding(
                           padding: const EdgeInsets.only(bottom: 10),
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Column(

                                 children: [
                                   SizedBox(
                                       height: 70,
                                       width: 70,
                                       child: Image.asset("assets/logo.png",color: Theme.of(context).primaryColor,)),

                                   Icon(Icons.flight_takeoff,size: 35,color: Theme.of(context).indicatorColor,),
                                   const  SizedBox(height: 10,),
                                   TextUtil(text: "Total Price",size: 12,),
                                   TextUtil(text: "\$ ${data.price}",size: 22,weight: true,color: Theme.of(context).primaryColor,),


                                 ],
                               ),
                               Transform.rotate(
                                 angle: 0.3,
                                 child: SizedBox(
                                   height: 150,
                                   width: 200,
                                   child: Image.asset("assets/world.png",color: Theme.of(context).primaryColor,),
                                 ),
                               ),

                             ],
                           ),
                         ),
                         const  Divider(),
                         const  SizedBox(height: 10,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Column(
                               children: [
                                 TextUtil(text: "FLIGHT DATE",size: 12,),
                                 TextUtil(text:data.date,size: 15,weight: true,color: Theme.of(context).primaryColor,),
                               ],
                             ),
                             Column(
                               children: [
                                 TextUtil(text: "GATE",size: 12,),
                                 TextUtil(text:data.gate,size: 15,weight: true,color: Theme.of(context).primaryColor,),
                               ],
                             ),
                             Column(
                               children: [
                                 TextUtil(text: "FLIGHT NO",size: 12,),
                                 TextUtil(text:data.flightNo,size: 15,weight: true,color: Theme.of(context).primaryColor,),
                               ],
                             )
                           ],
                         ),
                         const   SizedBox(height: 20,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Column(
                               children: [
                                 TextUtil(text: "BOARDING TIME",size: 12,),
                                 TextUtil(text:data.boardingTime,size: 15,weight: true,color: Theme.of(context).primaryColor,),
                               ],
                             ),
                             Column(
                               children: [
                                 TextUtil(text: "SEAT",size: 12,),
                                 TextUtil(text:data.seat,size: 15,weight: true,color: Theme.of(context).primaryColor,),
                               ],
                             ),
                             Column(
                               children: [
                                 TextUtil(text: "CLASS",size: 12,),
                                 TextUtil(text:data.flightClass,size: 15,weight: true,color: Theme.of(context).primaryColor,),
                               ],
                             )
                           ],
                         )
                       ],
                     ),
                   ),
                 ),

                  Stack(
                    children: [
                      
                      SizedBox(
                        height: 25,
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: double.infinity,
                                height: 1,
                                child: Row(
                                  children: List.generate(
                                      700 ~/ 10,
                                          (index) => Expanded(
                                        child: Container(
                                          color:
                                          index % 2 == 0 ? Colors.transparent :Theme.of(context).canvasColor,
                                          height: 2,
                                        ),
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: -10,
                          bottom: 0,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Theme.of(context).primaryColor,
                          )),
                      Positioned(
                          right: -10,
                          bottom: 0,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Theme.of(context).primaryColor,
                          ))
                    ],
                  ),
                  ShowUpAnimation(
                    delay: 300,
                    child: Column(

                      children: [

                       Center(child: TextUtil(text: "Boarding pass",color: Theme.of(context).primaryColor,weight: true,)),
                        Center(
                          child: SizedBox(
                            width: 280,
                            height: 100,
                            child: Image.asset("assets/barcode.webp",fit: BoxFit.fill,),
                          ),
                        ),

                      ],
                    ),
                  ),

                ],
              ),


            ),

          ))
        ],
      ),


    );
  }
}
