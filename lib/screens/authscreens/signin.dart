import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/color.dart';
import '../../utils/colornotifir.dart';
import '../../utils/enlanguage.dart';
import '../../utils/mediaqury.dart';
import '../customescreens/custtombutton.dart';
import '../homescreens/bottombar/bottombar.dart';
import 'creatingnewacc.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
    TextEditingController number = TextEditingController();
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body :SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height:height/ 8),

            Center(
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(50),

                    child: Image.asset('assets/logo2.png',height: height/5,),
                  ),
                ],
              ),
            ),
             Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child:  Text('Log In',
                    style:TextStyle(

                      fontFamily: "Poppins_Medium",
                      fontSize: height/40,

                    ),),
                ),

              ],
            ),
             const SizedBox(height: 10,),
             Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                    child:  Text('Enter your phone number to Login',style: TextStyle(
                    fontFamily: "Poppins_Medium",
                      fontSize: height/50,
                    ),)),
              ],
            ),


            const Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Divider(),
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text('Phone Number',style: TextStyle(
                    fontFamily: "Poppins_Medium",
                  ),),
                ),
              ],
            ),

            SizedBox(height:height/90),

            // SizedBox(width: width/20),
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
                    width: width / 2,
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
          SizedBox(height: height/30),
            // GestureDetector(
            //   onTap: (){
            //     Navigator.push(context,
            //       //  MaterialPageRoute(builder: (context)=>Otp(),
            //         ),
            //     );
            //   },
            //     child: Custombutton.button(primeryColor, EnString.sigin, width/1.1),
            // ),
            SizedBox(height: height / 50),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomBar()));
              },
              child: Custombutton.button(primeryColor, "Sign In", width/1.2),
            ),
            const SizedBox(height: 20,),


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
            SizedBox(height: height/40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Existing User ?",
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
                    "Sign Up",
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
        ),
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
    path.lineTo(width-30, 0);
    // path.quadraticBezierTo(width/2, height, width, height-50);
    //path.cubicTo(width / 2 - width / 8, 0, width / 2 - width / 8, height / 2, width / 2, height / 2);
    // path.cubicTo(x1, y1, x2, y2, x3, y3)
    path.cubicTo(width, 20, width, height+115, 0, height-30);
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




