import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonet/utils/mediaqury.dart';
import 'package:pin_code_view/pin_code_view.dart';

class successful extends StatefulWidget {
  const successful({super.key});

  @override
  State<successful> createState() => _successfulState();
}

class _successfulState extends State<successful> {
  @override
  Widget build(BuildContext context) {
    return PinCode(
      backgroundColor: Colors.blueAccent,
      title: "Enter PIN Code",subtitleTextStyle: TextStyle(

    ),
      //subtitle: "Please enter the code you received on your Phone",
      onChange: (String code) {
        print(code);
      },
      obscurePin: false,
    );
  }
}
