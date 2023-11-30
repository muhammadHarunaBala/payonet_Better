import 'package:flutter/material.dart';
import '../home.dart';

import '../profilesettings.dart';
import '../scanandpay.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState(pages: []);
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
   final List<Widget> _pages;

  _BottomBarState({required List<Widget> pages}) : _pages = pages;

  @override
  void initState() {
    _pages.add( HomeScreen());
    //_pages.add(const ScanAndPay());
    _pages.add( ProfileSetting());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.2,
                ),
              ),
            ),
            child: BottomNavigationBar(
                currentIndex: _currentIndex,
                backgroundColor: Colors.white,
                selectedItemColor:  const Color(0xFF1587c1),
                elevation: 0,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_filled), label: 'Home'),
                  // BottomNavigationBarItem(
                  //     icon: Icon(Icons.qr_code_scanner_sharp), label: ''),

                  BottomNavigationBarItem(
                      icon: Icon(Icons.menu), label: 'More')
                ]),
          ),
        ),
      ),
      // floatingActionButtonLocation:
      // FloatingActionButtonLocation.miniCenterDocked,
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: FloatingActionButton(
      //     backgroundColor: _currentIndex == 1 ?Colors.transparent : Colors.transparent,
      //     child: const Icon(Icons.qr_code_scanner_outlined),
      //     onPressed: () => setState(() {
      //       _currentIndex = 2;
      //     }),
      //   ),
      // ),
    );
  }
}




