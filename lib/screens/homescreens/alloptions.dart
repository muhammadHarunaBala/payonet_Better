import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonet/screens/homescreens/scanandpay.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';

class AllOptions extends StatefulWidget {
  const AllOptions({super.key});

  @override
  State<AllOptions> createState() => _AllOptionsState();
}

class _AllOptionsState extends State<AllOptions> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "All Options",
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
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>const ScanAndPay()),
                  );

                },
                child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.electric_bolt_outlined, 'Electricity'),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>const ScanAndPay()),
                  );

                },
                child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.language, 'Internet'),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>const ScanAndPay()),
                  );

                },
                child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.water_drop, 'Water'),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>const ScanAndPay()),
                  );

                },
                child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.car_crash, 'Car'),
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>const ScanAndPay()),
                  );

                },
                child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.shopping_bag_outlined, 'Shopping'),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>const ScanAndPay()),
                  );

                },
                child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.health_and_safety, 'Health'),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>const ScanAndPay()),
                  );

                },
                child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.phone_android, 'Mobile'),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>const ScanAndPay()),
                  );

                },
                child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.local_offer, 'Deals'),
              ),

            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>const ScanAndPay()),
                  );

                },
                child: Container(
                  margin: const EdgeInsets.only(left: 25,right: 20),
                    child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.wallet_outlined, 'E-Wallet')),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>const ScanAndPay()),
                  );

                },
                child: _buildButtonColumn(notifier.getprimeryColor, notifier.getblack,Icons.motorcycle, 'Motor'),
              ),


            ],
          ),


        ],
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
