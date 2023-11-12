import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/mediaqury.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Account Statement",
          style: TextStyle(
            color: notifier.getblack,
            fontSize: height / 40,
            fontFamily: 'Gilroy_Bold',
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
              margin: const EdgeInsets.only(left: 20,right: 20,),
                child: const Divider()),
            const SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 25, right: 25),
                  child: const Text("About Us",style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),

            const SizedBox(height: 20,),

            Container(
              margin: const EdgeInsets.only(left: 25,right: 25),
                child: const Text('I hired this lawyer to help me with a personal injury case and I was very impressed with their expertise ...  '),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25,right: 25),
                child: const Text('I hired this lawyer to help me with a personal injury case and I was very impressed with their expertise ...')),



            Container(
                margin: const EdgeInsets.only(left: 25,right: 25,),
                child: const Divider()),

            const SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 25,right: 25),
                  child: const Text("Policy",style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left: 25,right: 25),
                child: const Text('I hired this lawyer to help me with a personal injury case and I was very impressed with their expertise ...')),

            Container(
                margin: const EdgeInsets.only(left: 25,right: 25,),
                child: const Divider()),

            const SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25,right: 25),
                  child: const Text("Terms and condition",style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 25,right: 25),
              child: const Text('I hired this lawyer to help me with a personal injury case and I was very impressed with their expertise ...',
              style: TextStyle(),),
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
}
