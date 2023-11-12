import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonet/utils/mediaqury.dart';

class successful extends StatefulWidget {
  const successful({super.key});

  @override
  State<successful> createState() => _successfulState();
}

class _successfulState extends State<successful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dialog(
        shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(30.0)),
        child: Container(
          height: 300,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const FlutterLogo(size: 150,),
              const Text("This is a Custom Dialog",style:TextStyle(fontSize: 20),),
              SizedBox(height: height/50,)

            ],
          ),
        ),
      ) ,
    );
  }
}
