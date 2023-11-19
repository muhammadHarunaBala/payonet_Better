import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticket_widget/ticket_widget.dart';
import '../../../utils/colornotifir.dart';
import '../../../utils/mediaqury.dart';

class SelecFlight extends StatefulWidget {
  const SelecFlight({super.key});

  @override
  State<SelecFlight> createState() => _SelecFlightState();
}

class _SelecFlightState extends State<SelecFlight> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Select Flight",
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

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15),
            child: const Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text('Your Flight',style: TextStyle(fontFamily:"Poppins_Medium" ),),
                  ],
                ),
                Row(
                  children: [
                    Text('Lagos - Abuja',style: TextStyle(fontFamily:"Poppins_Bold" )),
                  ],
                ),
                Row(
                  children: [
                    Text('Aug 20, 2023',style: TextStyle(fontFamily:"Poppins_Medium" )),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            width: width/1.1,
            height: height/6,
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
            child:  Column(
              children: [
                Row(
                  children: [
                    const SizedBox(height: 30,),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text("Scanner",style: TextStyle(
                        fontFamily: "Poppins_Medium"
                      ),),
                    ),

                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: const Text("250",
                      style: TextStyle(
                        fontFamily: "Poppins_Medium"
                      ),),
                    ),


                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0,right: 20,top: 10,bottom: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('8:00 pm',
                    style: TextStyle(
                      fontFamily: "Poppins_Medium",)),
                      Icon(
                        Icons.arrow_right_alt,

                      ),
                      Text('2:15 pm',
                          style: TextStyle(
                          fontFamily: "Poppins_Medium",)),
                      Text('MKN7',
                          style: TextStyle(
                          fontFamily: "Poppins_Medium",)),
                    ],

                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0,right: 20,),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Lag, Mon',
                      style: TextStyle(
                        fontFamily: "Poppins_Medium",
                      ),),

                      Text('Abu, Tue'
                        ,
                        style: TextStyle(
                          fontFamily: "Poppins_Medium",)),
                      Text('Flight No.',
                        style: TextStyle(
                          fontFamily: "Poppins_Medium",)),
                    ],

                  ),
                ),
                const SizedBox(height: 20,),
                 Container(
                   margin: const EdgeInsets.only(left: 10),
                   child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Lag, Mon',
                      style: TextStyle(
                          fontFamily: "Poppins_Medium",
                      ),),

                      Text('Abu, Tue',style: TextStyle(
                        fontFamily: "Poppins_Medium"
                      ),),

                        Text('Flight No.',style: TextStyle(
                          fontFamily: "Poppins_Medium"
                        ),)

                    ],
                ),
                 ),

              ],
            ),
          ),
          TicketWidget(
            width: 350,
            height: 500,
            isCornerRounded: true,
            padding: EdgeInsets.all(20),
            child: TicketData(),
          ),
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
class TicketData extends StatelessWidget {
  const TicketData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120.0,
              height: 25.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(width: 1.0, color: Colors.green),
              ),
              child: const Center(
                child: Text(
                  'Business Class',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            const Row(
              children: [
                Text(
                  'LHR',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.flight_takeoff,
                    color: Colors.pink,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'ISL',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            'Flight Ticket',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ticketDetailsWidget(
                  'Passengers', 'Hafiz M Mujahid', 'Date', '28-08-2022'),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 52.0),
                child: ticketDetailsWidget('Flight', '76836A45', 'Gate', '66B'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 53.0),
                child: ticketDetailsWidget('Class', 'Business', 'Seat', '21B'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0),
          child: Container(
            width: 250.0,
            height: 60.0,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/barcode.png'),
                    fit: BoxFit.cover)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10.0, left: 75.0, right: 75.0),
          child: Text(
            '0000 +9230 2884 5163',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 30),
        const Text('         Developer: instagram.com/DholaSain')
      ],
    );
  }
}

Widget ticketDetailsWidget(String firstTitle, String firstDesc,
    String secondTitle, String secondDesc) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              firstTitle,
              style: const TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                firstDesc,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              secondTitle,
              style: const TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                secondDesc,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      )
    ],
  );
}
