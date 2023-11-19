import 'package:flutter/material.dart';
import 'package:payonet/screens/homescreens/profileupdate.dart';
import 'package:provider/provider.dart';
import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../authscreens/changepasscode.dart';
import '../customescreens/custtombutton.dart';
import 'aboutus.dart';
import 'accstatements.dart';
import 'help.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  State<ProfileSetting> createState() => _ProfileSetting();
}

class _ProfileSetting extends State<ProfileSetting> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Settings",
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
      body:    SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 10,),

            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),

                child: const Divider()),
            const SizedBox(height: 10,),


            Column(
              children: [
                const SizedBox(height: 5),
                Column(
                  children: [
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileUpdate(),
                          ),
                        );
                      },
                      child: settingtype(Icons.person, EnString.profilesetss),
                    ),




                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AccountStatement(),
                          ),
                        );
                      },
                      child: settingtype(Icons.document_scanner, EnString.downlodstm),
                    ),

                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChangePasscde(),
                          ),
                        );
                      },
                      child: settingtype(Icons.lock_person_sharp, "Change Pass-code"),
                    ),


                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Help(),
                          ),
                        );
                      },
                      child: settingtype(Icons.help_outline_rounded, EnString.help),
                    ),

                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutUs(),
                          ),
                        );

                      },
                      child: settingtype(Icons.info_outline, EnString.aboutus),
                    ),
                    SizedBox(height: height/4,),


                    Container(
                      margin: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: (){

                        },
                        child: Custombuttontxt.button(const Color(0x14007cbb), "Log Out", width/1.1,notifier.getprimeryColor),

                      ),
                    )






                  ],
                ),

              ],

            )


          ],
        ),


      ),



    );
  }
  Column _buildButtonColumnShareDocument(Color color,  color1,  String label) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20,),

        Container(
          width: 70,
          height: 40,
          decoration: ShapeDecoration(
            color: notifier.getprimeryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Center(
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



        ),

      ],
    );
  }
  Widget settingtype(icon, title) {
    return Container(
      color: Colors.transparent,
      child: Row(
        children: [
          SizedBox(width: width / 20),
          Container(
            width: 30,
            height: 30,
            decoration: ShapeDecoration(
              color: const Color(0x14007cbb),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Icon(
              icon,
              size: height / 40,
              color: notifier.getprimeryColor,
            ),
          ),
          // Image.asset(
          //   image,
          //   height: height / 27,
          //   color: notifier.getblack,
          // ),
          SizedBox(width: width / 30),
          Text(
            title,
            style: TextStyle(
              color: notifier.getblack,
              fontSize: height / 50,
              fontFamily: 'Poppins_Medium',
            ),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: height / 40,
            color: notifier.getblack,
          ),
          SizedBox(width: width / 20)
        ],
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
