import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Hero(
                tag: "logo",
                child: SizedBox(
                height: 130,
                width: 130,
                child: Image.asset("assets/logo.png",color: Theme.of(context).indicatorColor,)),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder:  UnderlineInputBorder(

                  borderSide:  BorderSide(color: Theme.of(context).canvasColor, width: 2.0),
                ),


              ),
            ),

            Spacer(),



          ],
        ),
      ),

    );
  }
}
