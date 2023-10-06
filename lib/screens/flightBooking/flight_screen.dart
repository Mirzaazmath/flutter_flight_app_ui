import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flight_app_ui/widgets/text.dart';
import 'package:flutter/material.dart';

import '../../data/flight_data.dart';

import '../../widgets/show_up_animation.dart';
class FlightScreen extends StatefulWidget {
  const FlightScreen({super.key});

  @override
  State<FlightScreen> createState() => _FlightScreenState();
}

class _FlightScreenState extends State<FlightScreen> {
  DateTime _selectedDate=DateTime.now();
 bool isLoad=true;
  int? selctedIndex;
  void update(){
    Future.delayed(const Duration(milliseconds: 100), () {
     setState(() {
       isLoad=true;
     });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _adddatebar(),
     isLoad?Expanded(child:   Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextUtil(text: "5 Emirates flight available",color: Colors.white,weight: true,size: 14,),
           const  SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                  itemCount: flightList.length,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return ShowUpAnimation(
                        delay: 150,
                        child: GestureDetector(
                          onTap: (){
                           setState(() {
                             selctedIndex=index;
                           });
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [

                              Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(bottom: 15),
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color:selctedIndex==index?Theme.of(context).indicatorColor:  Theme.of(context).canvasColor)
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
                                            TextUtil(text: flightList[0].source,color:selctedIndex==index?Theme.of(context).indicatorColor: Colors.white,size: 28,),
                                            const  SizedBox(height: 5,),
                                            TextUtil(text:  flightList[0].sourceName,color: Colors.white,size:12,weight: true,)
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            TextUtil(text: flightList[0].destination,color:selctedIndex==index?Theme.of(context).indicatorColor:  Colors.white,size: 28,),
                                            const  SizedBox(height: 5,),
                                            TextUtil(text: flightList[0].destinationName,color: Colors.white,size:12,weight: true,)
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
                                            TextUtil(text: "${flightList[0].date} ${flightList[0].boardingTime}",color: Colors.white,size:13,weight: true,)
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            TextUtil(text: "FLIGHT NO",color: Theme.of(context).canvasColor,size: 12,weight: true,),
                                            const  SizedBox(height: 5,),
                                            TextUtil(text: flightList[0].flightNo,color: Colors.white,size:13,weight: true,)
                                          ],
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    Divider(color: selctedIndex==index?Theme.of(context).indicatorColor: Colors.white,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.credit_card,color:selctedIndex==index?Theme.of(context).indicatorColor:  Colors.white,),
                                        RichText(
                                          text: TextSpan(
                                            text: 'Ticket Price ',
                                            style:  TextStyle(color: Theme.of(context).canvasColor,fontSize: 14),
                                            children:  <TextSpan>[
                                              TextSpan(text: "\$ ${flightList[0].price}", style: TextStyle(fontWeight: FontWeight.bold,color:selctedIndex==index?Theme.of(context).indicatorColor:  Colors.white,fontSize: 17),

                                              ),

                                            ],
                                          ),
                                        ),

                                      ],
                                    )
                                  ],

                                ),
                              ),
                              Positioned(
                                top: 40,
                                child: Container(
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
                                        Transform.rotate(
                                            angle: 6,
                                            child: Icon(Icons.flight_takeoff,size: 25,color:selctedIndex==index?Theme.of(context).indicatorColor:  Colors.white,)),
                                        const  SizedBox(height: 5,),
                                        TextUtil(text: flightList[0].duration,color: Colors.white,size:11,weight: true,)

                                      ],
                                    ),

                                  ),

                                ),
                              ),
                            ],
                          ),));
                  }),
            ),
          ],
        ),
      )):const  SizedBox(),

      ],
    );
  }

_adddatebar(){
  return  Container(
    margin:const  EdgeInsets.all(10),
    child: DatePicker(
      DateTime.now(),
      height: 85,
      width: 60,
      initialSelectedDate: DateTime.now(),
      selectedTextColor: Theme.of(context).primaryColor,
      selectionColor:Theme.of(context).indicatorColor,
      dateTextStyle:const  TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        fontSize: 17

      ),

      dayTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: Theme.of(context).canvasColor,
          fontSize: 11
      ),
      monthTextStyle: TextStyle(
          fontWeight: FontWeight.w600,

          color: Theme.of(context).canvasColor,
          fontSize: 11
      ),


      onDateChange: (date){
        setState(() {
          _selectedDate=date;
          isLoad=false;
          selctedIndex=null;
          update();
        });

      },

    ),
  );
}
}