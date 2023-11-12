import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../customescreens/customtextfild.dart';
import '../customescreens/custtombutton.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  late ColorNotifier notifier;
  TextEditingController email = TextEditingController();
  TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Help",
          style: TextStyle(
            color: notifier.getblack,
            fontSize: height / 50,
            fontFamily: 'Poppins_Bold',
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child:  _buildButtonColumnsmall(notifier.getprimeryColor, notifier.getblack,Icons.arrow_back_ios_new),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 10,right: 10),
                child: const Divider()),
            const SizedBox(height: 20,),
          Image.asset('assets/support.png') ,
            const Text("Help How can we help You ?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "Poppins_Medium"),),
             const SizedBox(height: 30,),
             Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                    child: const Text("Enter your Email",style: TextStyle(fontSize: 20,fontFamily: "Poppins_Medium"),)),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
                margin: const EdgeInsets.only(left: 20,right:20),
                child: Customtextbox.textField(
                  email,
                  "Email",
                  notifier.getvisacolor,
                  notifier.getvisacolor,
                  height / 12,
                  width / 1.1,
                  TextInputType.number,


                )
            ),
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20,top:5 ),
              height: height/5,
              // color: Colors.blueAccent,
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: message,
                keyboardType: TextInputType.multiline,
                maxLines: 10,
                decoration: const InputDecoration(
                  hintText: "message",
                  //labelText: 'Message',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color:Color(0xFF1587c1) )
                  ),

                ),


              ),



            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: (){
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ()));
                },
                child: Custombutton.button(notifier.getprimeryColor, "Submit", width/1.1),
              ),
            ),
            const SizedBox(height: 20,)

          ],
        ),
      ),
    );

  }

  Column _buildButtonColumnsmall(Color color,  color1, IconData icon, ) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Container(
            width: 40,
            height: 40,
            decoration: ShapeDecoration(
              color: const Color(0x14007cbb),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child:

            Icon(icon, color: color,size: 20,)),

      ],
    );
  }
}
