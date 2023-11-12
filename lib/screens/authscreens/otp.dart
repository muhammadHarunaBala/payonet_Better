import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonet/screens/authscreens/successfully.dart';
import 'package:payonet/screens/customescreens/custtombutton.dart';
import 'package:payonet/utils/color.dart';
import 'package:payonet/utils/mediaqury.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('abba'),
      ),
      body: Column(
        children: [
          Container(
            height: height/10,
            width: width/1.4,

            child: GestureDetector(
              onTap: (){
                //Navigator.pop(context, MaterialPageRoute(builder: (context)=>DialogExample()));
              },
              child: DialogExample(),
            ),
          )


        ],
      ),

    );
  }

}
class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(

          actions: <Widget>[
            const SizedBox(height: 40,),
            Center(child: Image.asset("assets/sucess.png")),
            const SizedBox(height: 40,),

           const Center(
               child: Text("Successfully",style: TextStyle(
                 fontFamily: "Poppins_Bold"
               ),)),
            const SizedBox(height: 40,),
             Center(
              child: Container(
                margin: const EdgeInsets.only(left: 10,right: 10),
                child: const Text("Your account is ready to use. you will be redirected to the home page in a few second",
                style: TextStyle(
                  fontFamily: "Poppins_Medium",fontSize: 15,
                ),),
              ),
            ),
            const SizedBox(height: 40,),
          ],
        ),
      ),
      child: Custombutton.button(primeryColor, "Sign In", width/1.2),
    );
  }
}

