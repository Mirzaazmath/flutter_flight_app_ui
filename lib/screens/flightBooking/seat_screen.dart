
import 'package:flutter/material.dart';

import '../../data/flight_data.dart';
import '../../widgets/text.dart';
class SeatScreen extends StatefulWidget {
  const SeatScreen({super.key});

  @override
  State<SeatScreen> createState() => _SeatScreenState();
}

class _SeatScreenState extends State<SeatScreen> {
  List<int>selectedSeat=[];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
      child: Row(
        children: [


          Stack(

            children: [

              Column(
                children: [
                  Expanded(
                    child: ClipOval(
                      child:
                      Container(
                        width: 180,
                        color:const  Color(0xff597672)
                      ),
                    ),
                  ),
                  const SizedBox(height: 100,),

                ],
              ),
              Column(

                children: [
                  const SizedBox(height: 100,),
                  Expanded(
                    child: Container(

                      width: 180,
                    decoration: const BoxDecoration(
                      borderRadius:  BorderRadius.vertical(top: Radius.circular(100)),
                        color:  Color(0xff597672)
                    ),
                    ),
                  ),
                ],
              ),
              Column(

                children: [
                 const  SizedBox(
                   width: 180,
                   height: 20,),
                  Center(
                    child: SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset("assets/logo.png",color: Theme.of(context).indicatorColor,)),
                  ),
                  TextUtil(text: "${flightList[0].date} ${flightList[0].boardingTime}",color: Colors.white,size:12,weight: true,),
                 const  SizedBox(height: 10,),
                  TextUtil(text: "Economy Class",color: Theme.of(context).indicatorColor,size:12,weight: true,),
                  const  SizedBox(height: 10,),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        children: [
                          for(int j=0;j<8;j++)...[Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    for(int i=0;i<4;i++)...[
                                      GestureDetector(
                                        onTap: (){
                                         setState(() {
                                           selectedSeat.clear();

                                           selectedSeat.addAll([j,i]);
                                         });
                                          },
                                        child: Container(
                                          margin:   EdgeInsets.only(right: i==1?20:5),
                                          height: 35,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color:selectedSeat.isNotEmpty?selectedSeat[0]==j&&selectedSeat[1]==i?Theme.of(context).indicatorColor: Colors.transparent:Colors.transparent,
                                              borderRadius: BorderRadius.circular(8),
                                              border: Border.all(color: selectedSeat.isNotEmpty?selectedSeat[0]==j&&selectedSeat[1]==i?Theme.of(context).indicatorColor: Theme.of(context).canvasColor:Theme.of(context).canvasColor)
                                          ),
                                        ),
                                      )
                                    ]


                                  ],
                                ),
                                const Spacer(),
                              ],
                            ),
                          ),]

                        ],
                      )
                    ),
                  )


                ],

              ),

            ],
          ),
       const  Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextUtil(text: flightList[0].source,color:Theme.of(context).indicatorColor,size: 28,),

                  TextUtil(text:  flightList[0].sourceName,color: Colors.white,size:12,weight: true,)
                ],
              ),
              Container(
                height: 60,
                width: 60,
                padding:const  EdgeInsets.all(1),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops:const  [
                          0.5,0.5
                        ],
                        colors:[
                          Theme.of(context).indicatorColor,
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
                      Transform.rotate(
                          angle: 6,
                          child: Icon(Icons.flight_takeoff,size: 25,color:Theme.of(context).indicatorColor)),
                      const  SizedBox(height: 5,),
                      TextUtil(text: flightList[0].duration,color: Colors.white,size:11,weight: true,)

                    ],
                  ),

                ),

              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextUtil(text: flightList[0].destination,color:Theme.of(context).indicatorColor,size: 28,),

                  TextUtil(text:  flightList[0].destinationName,color: Colors.white,size:12,weight: true,)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextUtil(text: "FLIGHT NO",color: Theme.of(context).canvasColor,size: 12,weight: true,),

                  TextUtil(text: flightList[0].flightNo,color: Colors.white,size:13,weight: true,)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                 selectedSeat.isEmpty?SizedBox(): TextUtil(text: "${selectedSeat[0]}${selectedSeat[1]}",color:Theme.of(context).indicatorColor,size: 28,),

                  TextUtil(text:  "Seat",color: Colors.white,size:12,weight: true,)
                ],
              ),
            const   SizedBox(),

            ],
          ),
          const  Spacer(),
        ],

      ),
    );
  }
}
