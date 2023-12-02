
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonet/screens/obordingscreens/sizeconfig.dart';
import 'package:provider/provider.dart';
import '../../utils/colornotifir.dart';
import '../authscreens/signin.dart';
import 'onbording_content.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;
  late ColorNotifier notifier;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;
  List colors = const [
    Colors.white,
    Colors.white,
  ];

  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Color(0xFF1587c1),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    return Scaffold(
      backgroundColor: colors[_currentPage],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: height/10,),

            Expanded(
              flex: 2,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemCount: contents.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[i].image,
                          height: SizeConfig.blockV! * 35,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: (height >= 840) ? 60 : 30,
                          ),
                        ),
                        Text(
                          contents[i].title,
                          textAlign: TextAlign.center,
                          style:  TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            fontSize:height/50,
                          ),
                        ),
                         SizedBox(height: height/70),

                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        contents.length,
                            (int index) => _buildDots(
                          index: index,
                        ),
                      ),
                    ),
                  ),
                  _currentPage + 1 == contents.length
                      ? Expanded(
                        child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignIn()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:  const Color(0xFF1587c1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: (width <= 550)
                              ? const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 20)
                              : EdgeInsets.symmetric(
                              horizontal: width * 0.2, vertical: 25),
                          textStyle:
                          TextStyle(fontSize: (width <= 550) ? 13 : 17),
                        ),
                        child: const Text("Sign Up"),
                    ),
                  ),
                      )
                      : Expanded(
                        child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignIn()));
                            },
                            style: TextButton.styleFrom(
                              elevation: 0,
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: (width <= 550) ? 13 : 17,
                              ),
                            ),
                            child: const Text(
                              "SKIP",
                              style: TextStyle( color: Color(0xFF1587c1),),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _controller.nextPage(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeIn,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF1587c1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 0,
                              padding: (width <= 550)
                                  ? const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20)
                                  : const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 25),
                              textStyle: TextStyle(
                                  fontSize: (width <= 550) ? 13 : 17),
                            ),
                            child: const Text("NEXT"),
                          ),
                        ],
                    ),
                  ),
                      )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}