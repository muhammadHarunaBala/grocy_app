import 'package:flutter/material.dart';

import '../screens/cart.dart';
import '../screens/cartigories.dart';
import '../screens/home.dart';


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
    _pages.add(const Catigories());
    _pages.add(const Home());
    _pages.add(const Cart());
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
                selectedItemColor:   Colors.redAccent,
                elevation: 0,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.credit_card), label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.read_more), label: 'More')
                ]),
          ),
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 1  ?  Colors.redAccent : Colors.blueAccent,
          child: const Icon(Icons.home_filled),
          onPressed: () => setState(() {
            _currentIndex = 1;
          }),
        ),
      ),
    );
  }
}




