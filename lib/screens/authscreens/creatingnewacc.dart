import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonet/screens/authscreens/signin.dart';
import 'package:payonet/screens/authscreens/successfully.dart';
import 'package:payonet/screens/customescreens/customtextfild.dart';
import 'package:payonet/screens/customescreens/custtombutton.dart';
import 'package:payonet/utils/enlanguage.dart';
import 'package:payonet/utils/mediaqury.dart';
import 'package:provider/provider.dart';

import '../../utils/color.dart';
import '../../utils/colornotifir.dart';
import 'otp.dart';

class CreatingNewAcc extends StatefulWidget {
  const CreatingNewAcc({super.key});

  @override
  State<CreatingNewAcc> createState() => _CreatingNewAccState();
}

class _CreatingNewAccState extends State<CreatingNewAcc> {
  late ColorNotifier notifier;

  String? _selectedindex;
  final List<Map> _myjson = [
    {
      'id': '1',
      'assets': 'assets/ng.png',
      'Text': "+234",
    }
  ];

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    TextEditingController name = TextEditingController();
    TextEditingController passcode = TextEditingController();
    TextEditingController number = TextEditingController();
    return  Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children: [
            const SizedBox(height: 80,),
            const Center(
              child: Text("Create New Account",style: TextStyle(
                fontFamily: "Poppins_Bold",
                fontSize: 20,

              ),),
            ),
            Container(

              margin: const EdgeInsets.only(left: 20,right: 20),
                child: const Divider(
                )),
             SizedBox(height: height/20,),
            Container(
              margin: const EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: const Text("Enter your name",style: TextStyle(
                fontFamily: "Poppins_Medium"
              ),),
            ),
             SizedBox(height: height/50,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white60,),
              child: Customtextfild.textField(name,
                  EnString.name,
                  Colors.transparent,
                  notifier.getvisacolor,
                  Colors.transparent,
                  notifier.getblack,
                  Colors.transparent,
                  height/17, width/1.1,
                  EnString.name,
                  notifier.getblack,
                  keyboardType: TextInputType.text),
            ),
            const SizedBox(height: 30,),
            Container(
              margin: const EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: const Text("Set a Passcode",style: TextStyle(
                  fontFamily: "Poppins_Medium"
              ),),
            ),
             SizedBox(height: height/50,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white60,
              ),
              margin: const EdgeInsets.only(left: 20,right: 20),
              child: Customtextfild.textField(passcode,
                  EnString.passcoderequest,
                  Colors.transparent,
                  notifier.getvisacolor,
                  Colors.transparent,
                  notifier.getblack,
                  Colors.transparent,
                  height/17, width/1.1,
                  EnString.passcoderequest,
                  notifier.getblack,
                  keyboardType: TextInputType.text),
            ),
             SizedBox(height: height/30,),

            Container(
              margin: const EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: const Text("Phone Number",style: TextStyle(
                  fontFamily: "Poppins_Medium"
              ),),
            ),

            SizedBox(height: height/50,),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white70,
              ),
              margin: const EdgeInsets.only(left: 20,right: 20),

              child: Row(
                children: [
                  DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      buttonColor: notifier.getvisacolor,
                      child: DropdownButton<String>(
                        // dropdownColor: notifire.getpinkscolor.withOpacity(0.4),
                        icon:   Icon(Icons.keyboard_arrow_down_rounded,
                          color: notifier.getblack,),
                        hint: Container(
                          height: height / 30,
                          width: width / 7,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.transparent),
                            image: const DecorationImage(
                                image: AssetImage("assets/ng.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        value: _selectedindex,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedindex = newValue;
                          });
                        },
                        items: _myjson.map(
                              (Map map) {
                            return DropdownMenuItem<String>(
                              value: map["id"].toString(),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: height / 30,
                                        width: width / 7,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            border:
                                            Border.all(color: Colors.transparent),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                map["assets"].toString(),
                                              ),

                                              // fit: BoxFit.cover
                                            )),

                                      ),
                                      Text(
                                        map["Text"],
                                      )

                                    ],

                                  ),
                                ],
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                  Container(
                      height: height / 30,
                      width: width / 200,
                      color: Colors.grey),
                  Container(
                    color: Colors.transparent,
                    height: height / 20,
                    width: width / 3,
                    child: TextField(
                      controller: number,
                      keyboardType: TextInputType.number,
                      style:   TextStyle(color: notifier.getblack,),
                      decoration: InputDecoration(
                        // filled: true,
                        contentPadding: EdgeInsets.only(left: height / 80),
                        // fillColor: notifier.getwihitecolor,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "08012345678",
                        hintStyle: TextStyle(
                          color: Colors.black12,
                          fontSize: height / 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height/20,),

            TextButton(

              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(

                  actions: <Widget>[
                    const SizedBox(height: 40,),
                    Center(child: Image.asset("assets/sucess.png")),
                    const SizedBox(height: 40,),

                    const Center(
                        child: Text("Successfully",style: TextStyle(
                            fontFamily: "Poppins_Bold"
                        ),)),
                    const SizedBox(height: 40,),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10,right: 10),
                        child: const Text("Your account is ready to use. you will be redirected to the home page in a few second",
                          style: TextStyle(
                            fontFamily: "Poppins_Medium",fontSize: 15,
                          ),),
                      ),
                    ),
                    const SizedBox(height: 40,),
                  ],
                ),
              ),
              child: Custombutton.button(primeryColor, "Sign Up", width/1.2),

            ),


           Row(
             children: [
               Expanded(child: Container(
                 margin: const EdgeInsets.only(left: 10.0,right: 20.0),
                 child: const Divider(
                   color: Colors.black12,
                 ),
               )),
               const Text('OR'),

               Expanded(child: Container(
                 margin: const EdgeInsets.only(left: 15.0,right: 20.0),
                 child: const Divider(
                   color: Colors.black12,
                   height: 50,
                 ),
               ))
             ],
           ),
              SizedBox(height: height/30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  EnString.AlreadyHaACC,
                  style: TextStyle(
                    color: notifier.getvisacolor,
                    fontSize: height / 50,
                    fontFamily: 'Poppins_Medium',
                  ),
                ),
                SizedBox(width: width / 70),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const SignIn(),
                      ),
                    );
                  },
                  child: Text(
                    EnString.sigin,
                    style: TextStyle(
                      color: const Color(0xFF007cbb),
                      fontSize: height / 50,
                      fontFamily: 'Poppins_Medium',
                    ),
                  ),
                )
              ],
            )

          ],
        ) ,
      ),
    );
  }
}
