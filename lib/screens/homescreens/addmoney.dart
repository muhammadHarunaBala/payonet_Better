import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({super.key});

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add Money",
          style: TextStyle(
            color: notifier.getblack,
            fontSize:  18,
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
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
                child: const Divider()),
            const SizedBox(height: 20,),
            Container(
              width: width/1.1,
              height: height/5,
              //width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffDDDDDD),
                    blurRadius: 6.0,
                    spreadRadius: 2.0,
                    offset: Offset(0.0, 0.0),
                  )
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 20, top:20 ),
                          child: _buildButtonColumnsend(notifier.getprimeryColor, notifier.getblack,Icons.account_balance)),

                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 25),
                                child: const Text("Bank Transfer",style: TextStyle(
                                    fontFamily: 'Poppins_Bold',

                                    fontSize: 15
                                ),),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5,),
                           Column(
                            children: [
                              Container(
                                margin:const EdgeInsets.only(left: 25),
                                child: const Text("Fund your account",style: TextStyle(
                                    fontFamily: 'Poppins_Medium',

                                    fontSize: 15
                                ),),
                              ),

                            ],
                          ),


                        ],
                      ),



                    ],
                  ),
                  const SizedBox(height: 5,),
                  Container(
                    margin: const EdgeInsets.only(left: 20,right: 20),
                    child: const Divider(),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child:  Column(
                          children: [
                            const Text('Account Number',style: TextStyle(
                              fontFamily: 'Poppins_Medium',
                            ),),
                           Column(
                             children: [
                               Container(
                                // margin: const EdgeInsets.only(left: 20),
                                 child: const Text("0319028965      ",style: TextStyle(
                                   fontFamily: 'Poppins_Medium',
                                 ),),
                               )
                             ],
                           )


                          ],

                        ),
                      ),
                      const SizedBox(height: 10,),
                      ElevatedButton(
                        style:  ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xff007ab6)),
                        ),
                        onPressed: () {},
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Copy'), // <-- Text
                            SizedBox(
                              width: 10,
                            ),
                            Icon( // <-- Icon
                              Icons.copy_rounded,
                              size: 15.0,
                            ),
                          ],
                        ),
                      ),



                    ],
                  )


                ],

              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: width/1.1,
              height: height/9,
              //width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffDDDDDD),
                    blurRadius: 6.0,
                    spreadRadius: 2.0,
                    offset: Offset(0.0, 0.0),
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 20, top:20,bottom: 10 ),
                      child: _buildButtonColumnsend(notifier.getprimeryColor, notifier.getblack,Icons.account_balance)),
                  Column(
                    children: [
                      Text('Top-up with Card / Account'),
                      Text('Add  money  directly from your bank...'),


                    ],
                  )
                ],
              ),
            )
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
  Column _buildButtonColumnsend(Color color,  color1, IconData icon, ) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

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

            Icon(icon, color: color, size: 45,)),

      ],
    );
  }
}
