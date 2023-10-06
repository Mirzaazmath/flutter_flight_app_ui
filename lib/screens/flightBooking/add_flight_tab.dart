import 'package:flight_app_ui/screens/flightBooking/route_screen.dart';
import 'package:flight_app_ui/screens/flightBooking/seat_screen.dart';
import 'package:flutter/material.dart';

import 'checkout_screen.dart';
import 'flight_screen.dart';




class BookingTabBar extends StatefulWidget {
  const BookingTabBar({super.key});

  @override
  State<BookingTabBar> createState() => _BookingTabBarState();
}


class _BookingTabBarState extends State<BookingTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return  Column(
     children: [
       TabBar(
         labelStyle:const  TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
         labelColor: Theme.of(context).indicatorColor,
         unselectedLabelColor:Theme.of(context).canvasColor,
         dividerColor: Theme.of(context).canvasColor,
         indicatorColor:Theme.of(context).indicatorColor,
         controller: _tabController,
         tabs: const <Widget>[
           Tab(
             icon: Text("Route"),
           ),
           Tab(
             icon:Text("Flight"),
           ),
           Tab(
             icon:Text("Seat"),
           ),
           Tab(
             icon:Text("Checkout"),
           ),
         ],
       ),
       Expanded(
         child: TabBarView(
           controller: _tabController,
           children: const  <Widget>[
             RouteScreen(),
             FlightScreen(),
             SeatScreen(),
             CheckoutScreen(),
           ],
         ),
       ),
     ],
   );
  }
}
