import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/colornotifir.dart';
import '../../utils/mediaqury.dart';
import '../authscreens/otp.dart';
import '../customescreens/customtextfild.dart';
import '../customescreens/custtombutton.dart';

class ProfileUpdate extends StatefulWidget {
  const ProfileUpdate({super.key});

  @override
  State<ProfileUpdate> createState() => _ProfileUpdate();
}

class _ProfileUpdate extends State<ProfileUpdate> {
  late ColorNotifier notifier;
  TextEditingController name = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController gender = TextEditingController();
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile Settings",
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
            Container(
              margin:  const EdgeInsets.all( 20),
                child: const Divider()),
            Column(
              children: [

                const SizedBox(height: 40,),

                Container(
                    margin: const EdgeInsets.only(left: 20,right:20),
                    child: Customtextbox.textField(
                      name,
                      "Name",
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
                      phonenumber,
                      "Phone Number",
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
                    margin: const EdgeInsets.only(left: 20,right:20),
                    child: Customtextbox.textField(
                      gender,
                      "Gender",
                      notifier.getvisacolor,
                      notifier.getvisacolor,
                      height / 12,
                      width / 1.1,
                      TextInputType.number,


                    )
                ),

                const SizedBox(height: 5,),



                const SizedBox(height: 15,),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Otp()));
                    },
                    child: Custombutton.button(notifier.getprimeryColor, "Save", width/1.1),
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
