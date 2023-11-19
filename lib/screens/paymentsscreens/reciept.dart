import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utils/colornotifir.dart';
import '../../utils/mediaqury.dart';
import '../customescreens/custtombutton.dart';

class Reciept extends StatefulWidget {
  const Reciept({super.key});

  @override
  State<Reciept> createState() => _RecieptState();
}

class _RecieptState extends State<Reciept> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "receipt of payment",
          style: TextStyle(
            color: notifier.getblack,
            fontSize: height / 40,
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
      body:  Column(
        children: [
          const SizedBox(height: 30,),
          const Center(
            child: Text("Transaction Successful",style: TextStyle(
              fontFamily: "Poppins_Bold",fontSize: 25
            ),),
          ),
          const SizedBox(height: 30,),
          Container(
              height: height/2.0 ,
              width: width/1.2,
              decoration: ShapeDecoration(
                color: const Color(0x14007cbb),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 15,),
                 const Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Text('04 March 2023',
                       style: TextStyle(
                         fontFamily: "Poppins_Medium",
                       ),),
                     Text('12:23PM',
                       style: TextStyle(
                         fontFamily: "Poppins_Medium",
                       ),),
                     Text('xxx',
                       style: TextStyle(
                         fontFamily: "Poppins_Medium",
                       ),),
                   ],
                 ),
                  const SizedBox(height: 10,),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Text("Send To Online Payment Account",
                              style: TextStyle(
                                fontFamily: "Poppins_Bold",
                              ),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Water Organization",
                              style: TextStyle(
                                fontFamily: "Poppins_Light",
                              ),),
                          ],
                        ),

                      ],
                    ),
                  ),

                  const SizedBox(height: 20,),
                  Container(
                      margin: const EdgeInsets.only(left: 20,right: 20),
                      child: Divider()),



                   Container(
                     margin: const EdgeInsets.only(left: 20),
                     child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Send By',
                          style: TextStyle(
                            fontFamily: "Poppins_Bold",
                          ),),
                        SizedBox(height: 10,),
                        Text('Andrew Ainsley',
                          style: TextStyle(
                            fontFamily: "Poppins_Medium",
                          ),),
                        SizedBox(height: 10,),
                        Text('Amount',
                          style: TextStyle(
                            fontFamily: "Poppins_Bold",
                          ),),
                        SizedBox(height: 10,),
                        Text('9,479.25',
                          style: TextStyle(
                            fontFamily: "Poppins_Medium",
                          ),),
                        SizedBox(height: 10,),
                        Text('Fee',
                          style: TextStyle(
                            fontFamily: "Poppins_Bold",
                          ),),
                        SizedBox(height: 10,),
                        Text('No Fee',
                          style: TextStyle(
                            fontFamily: "Poppins_Medium",
                          ),),

                        SizedBox(height: 20,),

                        Divider(),

                        Text('Total Amount',
                          style: TextStyle(
                            fontFamily: "Poppins_Bold",
                          ),),
                        Text('9,479.25',
                          style: TextStyle(
                            fontFamily: "Poppins_Medium",
                          ),),

                      ],
                  ),
                   ),


                ],
              )
          ),
          const SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Reciept()));
              },
              child: Custombutton.button(notifier.getprimeryColor, "Done", width/1.1),
            ),
          ),
          Container(

            margin: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Reciept()));
              },
              child: Custombutton.button(  notifier.getprimeryColor, "Save Receipt", width/1.1,),
            ),
          ),
        ],
      )
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
