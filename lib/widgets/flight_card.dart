import 'package:flight_app_ui/data/flight_data.dart';
import 'package:flight_app_ui/widgets/text.dart';
import 'package:flutter/material.dart';
class FlightCard extends StatelessWidget {
  FlightItem data;
  int index;


   FlightCard({super.key,required this.data,required this.index});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.center,
      children: [

        Container(
          height: 160,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Theme.of(context).canvasColor))
          ),
          child: Column(
            children: [
              const Spacer(),
              Row(
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
              const Spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextUtil(text: "DATE",color: Theme.of(context).canvasColor,size: 12,weight: true,),
                      const  SizedBox(height: 5,),
                      TextUtil(text: "${data.date} ${data.boardingTime}",color: Colors.white,size:13,weight: true,)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextUtil(text: "FLIGHT NO",color: Theme.of(context).canvasColor,size: 12,weight: true,),
                      const  SizedBox(height: 5,),
                      TextUtil(text: data.flightNo,color: Colors.white,size:13,weight: true,)
                    ],
                  )
                ],
              ),
              const Spacer(),
            ],

          ),
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
      ],
    );
  }
}
