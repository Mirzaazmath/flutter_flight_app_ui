import 'package:flutter/material.dart';

import '../../widgets/feild.dart';
class RouteScreen extends StatefulWidget {
  const RouteScreen({super.key});

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  TextEditingController _fromController=TextEditingController();
  TextEditingController _toController=TextEditingController();
  TextEditingController _dateController=TextEditingController();
  TextEditingController _travelerController=TextEditingController();
  TextEditingController _classController=TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _fromController.dispose();
    _fromController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Field(controller: _fromController, hinttext: "E-MAIL", icon: Icons.alternate_email,),
        const  SizedBox(height: 20,),
      ],

    );
  }
}
