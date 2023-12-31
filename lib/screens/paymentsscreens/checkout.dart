import 'package:flutter/material.dart';
import 'package:payonet/screens/paymentsscreens/reciept.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/mediaqury.dart';
import '../customescreens/custtombutton.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Expanded(
          child: Text(
            "All Options",
            style: TextStyle(
              color: notifier.getblack,
              fontSize: height / 50,
              fontFamily: 'Poppins_Bold',
            ),
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
          children: [
            const SizedBox(height: 20,),
            Center(
              child: GestureDetector(
                onTap: (){


                },
                child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.electric_bolt_outlined, 'Confirm payment details'),
              ),
            ),
             Center(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                  child: const Text('Pay electricity bills safely. conveniently &easily you can pay anytime and anywhere!',style: TextStyle(
                    fontFamily: "Poppins_Medium",
                  ),),
                )),


            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                child: Material(

                    color: const Color(0x14007cbb),
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                  // height: height/3 ,
                  // width: width/1.2,
                  // decoration: ShapeDecoration(
                  //   color: const Color(0x14007cbb),
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  // ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height/8 ,
                          width: width/5,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: const Color(0x14007cbb),
                            child: Container(
                                padding: const EdgeInsets.all(2),
                                child: const CircleAvatar(
                                  radius: 70,
                                  backgroundImage: AssetImage('assets/egqr.png'),

                                  //
                                )),
                          ),

                          ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20,right: 20),
                          child: const Divider()),

                       const SizedBox(height: 20,),

                       Column(
                         crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Text('Bill Amount (USD)',
                                  style: TextStyle(
                                  fontFamily: "Poppins_Medium",
                                ),),

                              ),

                              const Spacer(),
                              Container(
                                margin: const EdgeInsets.only(right: 20),
                                  child: const Text('9,479.25',style: TextStyle(
                                    fontFamily: "Poppins_Medium",
                                  ),))
                            ],
                          ),
                          const SizedBox(height: 20,),

                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Text('Name',style: TextStyle(
                                  fontFamily: "Poppins_Medium",
                                ),),

                              ),

                              const Spacer(),
                              Container(
                                  margin: const EdgeInsets.only(right: 20),
                                  child: const Text('Andrew Ainsley',style: TextStyle(
                                    fontFamily: "Poppins_Medium",
                                  ),))
                            ],
                          ),
                          const SizedBox(height: 20,),

                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Text('Customer',style: TextStyle(
                                  fontFamily: "Poppins_Medium",
                                ),),

                              ),

                              const Spacer(),
                              Container(
                                  margin: const EdgeInsets.only(right: 20),
                                  child: const Text('37173838939',style: TextStyle(
                                    fontFamily: "Poppins_Medium",
                                  ),))
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Text('Status',style: TextStyle(
                                  fontFamily: "Poppins_Medium",
                                ),),

                              ),

                              const Spacer(),
                              Container(
                                  height: height/45,
                                  width: width/7,
                                  decoration: ShapeDecoration(
                                   color: const Color(0xfff75555),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),

                                  margin: const EdgeInsets.only(right: 10,left: 5),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 2.2),
                                    child: Text('Unpaid',style: TextStyle(
                                      fontFamily: "Poppins_Medium",
                                    ),),
                                  ))
                            ],
                          ),


                        ],
                      ),
                      SizedBox(height: 20,)


                    ],

                  ),

                ),
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              margin: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Reciept()));
                },
                child: Custombutton.button(notifier.getprimeryColor, "Pay now", width/1.1),
              ),
            ),

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
  Column _buildButtonColumn(Color color,  color1, IconData icon,  String label) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        Container(
            width: 100,
            height: 100,
            decoration: ShapeDecoration(
              color: const Color(0x30ffdc64),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child:

            Icon(icon, color: color,size: 45,)),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontFamily: "Poppins_Medium",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color1,
            ),
          ),
        ),
      ],
    );
  }
}
