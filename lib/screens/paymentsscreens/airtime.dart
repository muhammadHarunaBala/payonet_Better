import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonet/screens/paymentsscreens/reciept.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../authscreens/otp.dart';
import '../customescreens/customtextfild.dart';
import '../customescreens/custtombutton.dart';
import 'checkout.dart';

class AirtimeRecharge extends StatefulWidget {
  const AirtimeRecharge({super.key});

  @override
  State<AirtimeRecharge> createState() => _AirtimeRechargeState();
}

class _AirtimeRechargeState extends State<AirtimeRecharge> {
  late ColorNotifier notifier;
  TextEditingController network = TextEditingController();
  TextEditingController mobilenumbet = TextEditingController();
  TextEditingController amount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Airtime Recharge",
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
          children: [
            Column(
              children: [

                //const SizedBox(height: 40,),

                Container(
                  margin: const EdgeInsets.all(20),

                    child: const Divider()),
                const SizedBox(height: 10,),

                Container(
                    margin: const EdgeInsets.only(left: 20,right:20),
                    child: Customtextbox.textField(
                      network,
                      EnString.network,
                      notifier.getvisacolor,
                      notifier.getvisacolor,
                      height / 12,
                      width / 1.1,
                      TextInputType.text,


                    )
                ),
                const SizedBox(height: 20,),

                Container(
                    margin: const EdgeInsets.only(left: 20,right:20),
                    child: Customtextbox.textField(
                      mobilenumbet,
                      EnString.number,
                      notifier.getvisacolor,
                      notifier.getvisacolor,
                      height / 12,
                      width / 1.1,
                      TextInputType.phone,


                    )
                ),
                const SizedBox(height: 20,),

                Container(
                    margin: const EdgeInsets.only(left: 20,right:20),
                    child: Customtextbox.textField(
                      amount,
                      EnString.amount,
                      notifier.getvisacolor,
                      notifier.getvisacolor,
                      height / 12,
                      width / 1.1,
                      TextInputType.number,


                    )
                ),

                const SizedBox(height: 5,),


                Container(
                  margin: const EdgeInsets.only(right: 10),
                  alignment: Alignment.bottomRight,
                  child:   Text(
                    EnString.balace,
                    style: const TextStyle(
                      color: Color(0xFF726666),
                      fontSize: 15,
                      fontFamily: 'Poppins_Medium',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Checkout()));
                    },
                    child: Custombutton.button(notifier.getprimeryColor, EnString.proceed, width/1.1),
                  ),
                )



              ],


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
}
