// import 'package:flutter/material.dart';
//
// import '../screens/cart.dart';
// import '../screens/cartigories.dart';
// import '../screens/home.dart';
//
//
// class BottomBar extends StatefulWidget {
//   @override
//   _BottomBarState createState() => _BottomBarState(pages: []);
// }
//
// class _BottomBarState extends State<BottomBar> {
//   int _currentIndex = 0;
//    final List<Widget> _pages;
//
//   _BottomBarState({required List<Widget> pages}) : _pages = pages.isEmpty? pages: [const Catigories(), const Home(), const Cart()];
//
//   @override
//   void initState() {
//     _pages.add(const Catigories());
//     _pages.add(const Home());
//     _pages.add(const Cart());
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomAppBar(
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 10,
//         clipBehavior: Clip.antiAlias,
//         child: SizedBox(
//           height: kBottomNavigationBarHeight,
//           child: Container(
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               border: Border(
//                 top: BorderSide(
//                   color: Colors.grey,
//                   width: 0.2,
//                 ),
//               ),
//             ),
//             child: BottomNavigationBar(
//                 currentIndex: _currentIndex,
//                 backgroundColor: Colors.white,
//                 selectedItemColor:   Colors.redAccent,
//                 elevation: 0,
//                 onTap: (index) {
//                   setState(() {
//                     _currentIndex = index;
//                   });
//                 },
//                 items:  const [
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.credit_card), label: 'Home'),
//                   //BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.read_more), label: 'More')
//                 ]),
//           ),
//         ),
//       ),
//       floatingActionButtonLocation:
//       FloatingActionButtonLocation.miniCenterDocked,
//       floatingActionButton: Padding(
//         padding:  const EdgeInsets.all(5.0),
//         child: FloatingActionButton(
//           backgroundColor: _currentIndex == 1  ?  Colors.redAccent : Colors.blueAccent,
//           child: const Icon(Icons.home_filled),
//           onPressed: () => setState(() {
//             _currentIndex = 0;
//           }),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//

import 'package:flutter/material.dart';
import 'package:grocy_app/authscreens/otp.dart';

import '../screens/cart.dart';
import '../screens/cartigories.dart';
import '../screens/home.dart';

class BottomBarScreen extends StatefulWidget {
  @override

  _BottomBarScreenState createState() => _BottomBarScreenState();

}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _currentIndex = 0;
  late final List<Widget> _pages;

  //_BottomBarState({required List<Widget> pages}) : _pages = pages;



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
      // appBar: AppBar(
      //   title: Text('Bottom Navigation Demo'),
      // ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category,color: Colors.white,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
        floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding:  const EdgeInsets.all(5.0),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 1  ?  notifier.getprimeryColor : notifier.getvisacolor,
          child: const Icon(Icons.home_filled),
          onPressed: () => setState(() {
            _currentIndex = 1;
          }),
        ),
      ),
    );
  }
}

// Sample Screens (Replace these with your own screen implementations)





