import 'package:flutter/material.dart';
import '../../data/flight_data.dart';
import '../../widgets/show_up_animation.dart';
import '../../widgets/text.dart';
class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String process="Pay";
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),

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
                                    height: 50,
                                    width: 50,
                                    child: Image.asset("assets/logo.png",color: Theme.of(context).primaryColor,)),

                                Icon(Icons.flight_takeoff,size: 35,color: Theme.of(context).indicatorColor,),

                                TextUtil(text: "Total Price",size: 12,),
                                TextUtil(text: "\$ ${flightList[0].price}",size: 22,weight: true,color: Theme.of(context).primaryColor,),


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

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              TextUtil(text: "FLIGHT DATE",size: 12,),
                              TextUtil(text:flightList[0].date,size: 15,weight: true,color: Theme.of(context).primaryColor,),
                            ],
                          ),
                          Column(
                            children: [
                              TextUtil(text: "GATE",size: 12,),
                              TextUtil(text:flightList[0].gate,size: 15,weight: true,color: Theme.of(context).primaryColor,),
                            ],
                          ),
                          Column(
                            children: [
                              TextUtil(text: "FLIGHT NO",size: 12,),
                              TextUtil(text:flightList[0].flightNo,size: 15,weight: true,color: Theme.of(context).primaryColor,),
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
                              TextUtil(text:flightList[0].boardingTime,size: 15,weight: true,color: Theme.of(context).primaryColor,),
                            ],
                          ),
                          Column(
                            children: [
                              TextUtil(text: "SEAT",size: 12,),
                              TextUtil(text:flightList[0].seat,size: 15,weight: true,color: Theme.of(context).primaryColor,),
                            ],
                          ),
                          Column(
                            children: [
                              TextUtil(text: "CLASS",size: 12,),
                              TextUtil(text:flightList[0].flightClass,size: 15,weight: true,color: Theme.of(context).primaryColor,),
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

                    Center(child: TextUtil(text: "Check Out Now",color: Theme.of(context).primaryColor,weight: true,)),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                             process="Load";
                             update();
                          });


                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Theme.of(context).indicatorColor,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          alignment: Alignment.center,
                          child: process=="Load"?CircularProgressIndicator(
                            color: Theme.of(context).primaryColor,
                          ): TextUtil(text: process=="Pay"? "Pay Now":"Flight Booked",weight: true,color: Theme.of(context).primaryColor,size: 16,),
                        ),
                      ),
                    ),


                  ],
                ),
              ),

            ],
          ),


        ),

      ),
    );
  }

  void update(){
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        process="Book";
      });
    });
  }
}
