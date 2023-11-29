
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonet/screens/homescreens/profilesettings.dart';
import 'package:provider/provider.dart';
import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../obordingscreens/customeshape.dart';
import '../paymentsscreens/airtime.dart';
import '../paymentsscreens/electricity.dart';
import '../paymentsscreens/internet.dart';
import 'addmoney.dart';
import 'help.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();


}

class _HomeScreenState extends State<HomeScreen> {

  List<Map<String, dynamic>> trnax=[
    {
      'trnx_name': 'Paid to Garba Aliyu',
      'amount': -100,
      'from': 'payontime',
       

    },
    {
      'trnx_name': 'Send from Aliyu Mudi',
      'amount': 700,
      'from': 'payontime',
       

    },
    {
      'trnx_name': 'Paid to jatau Mugu',
      'amount': -300,
      'from': 'payontime',

    },
    {
      'trnx_name': 'Paid to aliyu india',
      'amount': 300,
      'from': 'payontime',

    },


  ];
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    bool checkTrnx = false;
    bool _visability=false;
    return  Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFF007cbb),
              height: height/3.7,
              child: Stack(
                children: [

                  ClipPath(
                    clipper: Customshape(),
                    child: Container(
                      height: height/1.2,
                      width: MediaQuery.of(context).size.width/2.0,
                      color: const Color(0xFF1587c1),
                    ),
                  ),
                  ClipPath(
                    clipper:Customshape(),
                    child: Container(
                      height: height/5,
                      width: MediaQuery.of(context).size.width/2.5,
                      color:const Color(0xFF007cbb) ,
                    ),
                  ),
                  Column(

                    children: [
                      const SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          const SizedBox(height: 90,),



                          Expanded(
                            child: Align(
                              alignment: Alignment.topRight,

                              child: Container(
                                margin: const EdgeInsets.only(top: 10,right: 5),
                                //color: Colors.red,
                                //width: 48,
                                height: 50,


                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileSetting()));
                                    },
                                        icon: const Icon(Icons.notifications,size: 27,color: Colors.white,)),
                                    IconButton(onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Help()));
                                    },
                                        icon: const Icon(Icons.help,size: 27,color: Colors.white,)),


                                  ],
                                ),
                              ),


                              // child: IconButton(
                              //     onPressed: (){
                              //
                              //     },
                              //     icon: const Icon(Icons.account_circle,size: 50,color: Colors.white,)),
                            ),
                          ),
                        ],

                      ),



                      Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                child: Column(
                                  children: [
                                    const Row(

                                      children: [
                                        Text(
                                            "Available Balance",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontFamily: "Poppins_Medium",
                                              fontWeight: FontWeight.normal,
                                            )
                                        ),

                                        SizedBox(height: 20,),



                                        // SizedBox(
                                        //   child: IconButton(
                                        //       onPressed: (){
                                        //
                                        //       },
                                        //       icon: const Icon(Icons.remove_red_eye_outlined,size: 20,color: Colors.white,)),
                                        // ),




                                      ],
                                    ),
                                      Row(
                                      children: [
                                        const Text("₦",style: TextStyle(
                                          fontSize: 28,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        SizedBox(width: 5,),

                                        Container(
                                          margin: EdgeInsets.all(2),

                                          child:  ido()
                                        ),




                                        ],

                                    )
                                  ],
                                ),



                                // children: [
                                //
                                //
                                //   SizedBox(
                                //     height: 120,
                                //
                                //
                                //     child: IconButton(
                                //         onPressed: (){
                                //
                                //         },
                                //         icon: const Icon(Icons.remove_red_eye_outlined,size: 20,color: Colors.white,)),
                                //   ),
                                //
                                //
                                //
                                // ],
                              ),
                            ),


                          )

                      ),
                      const SizedBox(height: 20,)
                    ],

                  ),

                ],
              ),
            ),
            // SizedBox(height: height/60),
            //  Align(
            //   alignment: Alignment.topLeft,
            //   child: Container(
            //     margin: const EdgeInsets.only(left: 20,bottom: 10),
            //     child: const Text(
            //       'Money Transfer',
            //       style: TextStyle(
            //         color: Color(0xFF5E5353),
            //         fontSize: 15,
            //         fontFamily: 'Poppins_Medium',
            //         //fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
            //
            // Container(
            //   width: width/1.1,
            //   height: height/7,
            //   //width: double.infinity,
            //   decoration: const BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(10),
            //     ),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Color(0xffDDDDDD),
            //         blurRadius: 6.0,
            //         spreadRadius: 2.0,
            //         offset: Offset(0.0, 0.0),
            //       )
            //     ],
            //   ),
            //
            //   child:  Stack(
            //     children: [
            //       const Padding(
            //         padding: EdgeInsets.only(left: 20,top: 5),
            //
            //       ),
            //
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           GestureDetector(
            //             onTap: (){
            //               Navigator.push(context, CupertinoPageRoute(builder: (context)=>const ScanAndPay()),
            //               );
            //
            //             },
            //             child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.qr_code_scanner_rounded, 'Scan & Pay'),
            //           ),
            //           GestureDetector(
            //             onTap: (){
            //               Navigator.push(context, CupertinoPageRoute(builder: (context)=>const SendToBank()),
            //               );
            //
            //             },
            //             child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.account_balance, 'To Bank'),
            //           ),
            //           GestureDetector(
            //             onTap: (){
            //               Navigator.push(context, CupertinoPageRoute(builder: (context)=>const SendToBank()),
            //               );
            //
            //             },
            //             child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.send_to_mobile, 'To Number'),
            //           ),
            //           GestureDetector(
            //             onTap: (){
            //               Navigator.push(context, CupertinoPageRoute(builder: (context)=>const AirtimeRecharge()),
            //               );
            //
            //             },
            //             child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.add_card_sharp, 'Add Money'),
            //           ),
            //
            //         ],
            //       ),
            //     ],
            //   ),
            // ),

            SizedBox(height: height/50),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 25,bottom: 10),
                child: const Text(
                  'Recharge and bills',
                  style: TextStyle(
                    fontSize: 18,
                   // fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins_Medium',
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: width/1.1,
              height: height/7,
              //width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                // boxShadow: [
                //   BoxShadow(
                //     color: Color(0xffDDDDDD),
                //     blurRadius: 6.0,
                //     spreadRadius: 2.0,
                //     offset: Offset(0.0, 0.0),
                //   )
                // ],
              ),

              child:  Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20,top: 5),

                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>const AirtimeRecharge()),
                          );

                        },
                        child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.phonelink_ring, 'Airtime'),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>const Internet()),
                          );

                        },
                        child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.language, 'Internet'),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>const Electricity()),
                          );

                        },
                        child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.electric_bolt_outlined, 'Electricity'),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>const AddMoney()),
                          );

                        },
                        child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.menu, 'Add Money'),
                      ),

                    ],
                  ),
                ],
              ),
            ),

            // SizedBox(height: height/130),
            // Align(
            //   alignment: Alignment.topLeft,
            //   child: Container(
            //     margin: const EdgeInsets.only(left: 20,bottom: 10),
            //     child: const Text(
            //       'Travel bookings',
            //       style: TextStyle(
            //         color: Color(0xFF5E5353),
            //         fontSize: 15,
            //         fontFamily: 'Poppins_Medium',
            //         //fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
            // Container(
            //   width: width/1.1,
            //   height: height/7,
            //   //width: double.infinity,
            //   decoration: const BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(10),
            //     ),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Color(0xffDDDDDD),
            //         blurRadius: 6.0,
            //         spreadRadius: 2.0,
            //         offset: Offset(0.0, 0.0),
            //       )
            //     ],
            //   ),
            //
            //   child:  Stack(
            //     children: [
            //       const Padding(
            //         padding: EdgeInsets.only(left: 20,top: 5),
            //
            //       ),
            //
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           GestureDetector(
            //             onTap: (){
            //               Navigator.push(context, CupertinoPageRoute(builder: (context)=>const Flight()),
            //               );
            //
            //             },
            //             child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.flight_land, 'Flight'),
            //           ),
            //           GestureDetector(
            //             onTap: (){
            //               Navigator.push(context, CupertinoPageRoute(builder: (context)=>const Otp()),
            //               );
            //
            //             },
            //             child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.train, 'Train'),
            //           ),
            //           GestureDetector(
            //             onTap: (){
            //               Navigator.push(context, CupertinoPageRoute(builder: (context)=>const Otp()),
            //               );
            //
            //             },
            //             child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.directions_bus, 'Bus'),
            //           ),
            //           GestureDetector(
            //             onTap: (){
            //               Navigator.push(context, CupertinoPageRoute(builder: (context)=>const AllOptions()),
            //               );
            //
            //             },
            //             child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.menu, 'More'),
            //           ),
            //
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.only(left: 25,),
                child: Text(
                  "Recent Activities",style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontFamily: "Poppins_Medium",fontSize: 18),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 20),
              child: Container(
                width: width/1.1,
                height: height/2.5,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color(0xffDDDDDD),
                  //     blurRadius: 6.0,
                  //     spreadRadius: 2.0,
                  //     offset: Offset(0.0, 0.0),
                  //   )
                  // ],
                ),
                child: Column(
                  children: [

                    Expanded(
                      child: ListView.builder(
                          itemCount: trnax.length,
                          itemBuilder: (BuildContext context, int index) {

                            if(trnax[index]["amount"]<0){
                              checkTrnx=false;
                            }else{
                              checkTrnx=true;
                            }
                            return GestureDetector(
                              onTap: (){},
                              child: SizedBox(
                                height: height/12,
                                child: Column(
                                  children: [


                                       ListTile(

                                        trailing:  Text(
                                          "NGN ${trnax[index]["amount"]}",
                                          style: checkTrnx?const TextStyle(color: Color(0xFF007cbb), fontSize: 15,backgroundColor: Color(0x14007cbb)):const TextStyle(color: Colors.red, fontSize: 15,backgroundColor: Color(0x14007cbb), ),
                                        ),
                                        title: Text(trnax[index]["trnx_name"],style: const TextStyle(fontFamily: "Poppins_Medium",fontSize: 15),),
                                        //subtitle: Text(from[index]["from"].toString(),style: const TextStyle(fontFamily: "Poppins_Medium")),
                                      ),

                                    // const Padding(
                                    //   padding: EdgeInsets.only(left: 40,),
                                    //   child:
                                    //   Divider(),
                                    // ),

                                  ],
                                ),
                              ),
                            );

                          }),
                    ),
                    const SizedBox(height: 5,),
                    // Container(
                    //   margin: const EdgeInsets.only(top: 10,bottom: 10),
                    //   width: width/5,
                    //   height: height/45,
                    //   decoration: ShapeDecoration(
                    //     color: const Color(0xffa6d4ef),
                    //     shape: RoundedRectangleBorder(
                    //       side: const BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
                    //       borderRadius: BorderRadius.circular(10),
                    //     ),
                    //   ),
                    //
                    //   child: GestureDetector(
                    //     onTap: (){},
                    //     child: const SizedBox(
                    //
                    //       height: 50,
                    //       child: (
                    //           Text(
                    //             'view more',
                    //             textAlign: TextAlign.center,
                    //             style: TextStyle(
                    //               color: Colors.black,
                    //               fontSize: 12,
                    //               fontFamily: 'Kufam_Bold',
                    //               fontWeight: FontWeight.w400,
                    //             ),
                    //           )
                    //       ),
                    //     ),
                    //   ),
                    // )

                  ],
                ),


              ),
            ),


            SizedBox(height: height/70)
          ],

        ),

      ),
    );
  }
  Column _buildButtonColumn(Color color,  color1, IconData icon,  String label) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        Container(
            width: 60,
            height: 60,
            decoration: ShapeDecoration(
            color: const Color(0x14007cbb),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child:

            Icon(icon, color: color,size: 30,)),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontFamily: "Poppins_Medium",
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: color1,
            ),
          ),
        ),
      ],
    );
  }
  bool _visability=false;
  Widget ido(){
    return GestureDetector(
      onTap: (){
        print("object "+_visability.toString());
        if(_visability){
          setState(() {
            _visability=false;
          });
        }else{
          setState(() {
            _visability=true;
          });
        }
      },
      child: Stack(
        children: [
          if(_visability)...[
            const Row(
              children: [
                Text("9,800.40",style :TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontFamily: 'Poppins_Medium',
                  //fontWeight: FontWeight.bold,
                )),
                SizedBox(width: 10,),
                Icon(Icons.visibility,color: Colors.white,)
              ],
            )
          ]else...[
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("*****",style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontFamily: 'Poppins_Bold',
                  fontWeight: FontWeight.bold,
                )),
                SizedBox(width: 10,),
                Icon(Icons.visibility_off,color: Colors.white,)
              ],
            )
          ]

        ],
      ),
    );
  }

}

class Customshape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(width-0, 0);
    // path.quadraticBezierTo(width/2, height, width, height-50);
    //path.cubicTo(width / 2 - width / 8, 0, width / 2 - width / 8, height / 2, width / 2, height / 2);
    // path.cubicTo(x1, y1, x2, y2, x3, y3)
    path.cubicTo(width, 10, width, height+0, 0, height-50);
    //path.quadraticBezierTo(10, 10, 100, 100);
    // path.conicTo(10, 10, 50,50, 0.5);
    // path.lineTo(5, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }



}



