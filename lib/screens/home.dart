// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:grocy_app/authscreens/otp.dart';
// import 'package:grocy_app/utils/mediaqury.dart';
//
// class Home extends StatefulWidget {
//    Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
//
//   static const itemCount = 8;
//
// //list of each bloc expandable state, that is changed to trigger the animation of the AnimatedContainer
//   List<bool> expandableState = List.generate(itemCount, (index) => false);
//
//   Widget bloc (double width, int index) {
//     bool isExpanded = expandableState[index];
//
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           //changing the current expandableState
//           expandableState[index] = !isExpanded;
//         });
//       },
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 200),
//         margin: const EdgeInsets.all(20.0),
//         width: !isExpanded ? width * 0.4 : width * 0.8,
//         height: !isExpanded ? width * 0.4 : width * 0.8,
//         color: Colors.red,
//       ),
//     );
//   }
// }
//
//
//
// class _HomeState extends State<Home> {
//   final TextEditingController _searchController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: SingleChildScrollView(
//
//         child: Column(
//             children: [
// //               const SizedBox(height: 50,),
//             Row(
//               children: [
//                 Container(
//                   margin: const EdgeInsets.only(left: 40),
//                     child: const Text('Good Morning muhammad ')),
//               ],
//             ),
//
//             const SizedBox(height: 10,),
//            Container(
//              width: width/1.1,
//              height: 50,
//             //color: notifier.getvisacolor,
//           // Add padding around the search bar
//           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//           // Use a Material design search bar
//           child: TextField(
//             controller: _searchController,
//             decoration: InputDecoration(
//               //focusColor: notifier.getprimeryColor,
//               hintText: 'Search...',
//               // Add a clear button to the search bar
//               suffixIcon: IconButton(
//                 icon: Icon(Icons.clear),
//                 onPressed: () => _searchController.clear(),
//               ),
//               // Add a search icon or button to the search bar
//               prefixIcon: IconButton(
//                 icon: Icon(Icons.search),
//                 onPressed: () {
//                   // Perform the search here
//                 },
//               ),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//             ),
//           )
//           ),
//
//
//
//
//             ],
//           ),
//         ),
//
//
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocy_app/authscreens/otp.dart';
import 'package:grocy_app/screens/productddetails.dart';
import 'package:grocy_app/utils/mediaqury.dart';

import 'cart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const itemCount = 8;
  final TextEditingController _searchController = TextEditingController();
  List<bool> expandableState = List.generate(itemCount, (index) => false);

  Widget bloc (double width, int index) {
    bool isExpanded = expandableState[index];

    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetails()));


          //changing the current expandableState
          expandableState[index] = !isExpanded;
        });
      },
      child: Container(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 100),
              margin:  EdgeInsets.all(10.0),
              // width: !isExpanded ? width * 0.4 : width * 1,
              // height: !isExpanded ? width * 0.5 : width * 1,
              width:   width * 0.4 ,
              height:  width * 0.5 ,
              //color: Colors.red,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade100
                    ),
                    height: height/5,
                    width: width/2,

                    child: Image.asset('assets/s5.png'),
                  ),
                  SizedBox(height: 10,),

                  Text('Item Name'),


                ],


              ),
            ),

            Container(

                child: Text("₦500",style: TextStyle(
                  color: notifier.getprimeryColor,
                ),)),
             ElevatedButton.icon(
               style:  ButtonStyle(

                   backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen), // Button Background Color
                   // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                   //   EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                   //
                   //   // Button Padding
                   // ),
               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                 RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8.0), // Button Border Radius
                   side: BorderSide(color: Colors.white), // Button Border Color
                 ),
               )


               ),


                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                },
                icon: Icon( // <-- Icon
                  Icons.add_shopping_cart_sharp,
                  size: 20,color: Colors.white,
                ),
                label: Text('Add to Bag',style: TextStyle(
                  color: Colors.white
                ),), // <-- Text
              ),


          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(


//list of each bloc expandable state, that is changed to trigger the animation of the AnimatedContainer



        body: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(height: 50,),

              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 40),
                      child: const Text('Good Morning muhammad ')),


                ]

            ),
              SizedBox(height: 20,),

          Container(
              width: width/1.1,
              height: 50,
             //color: notifier.getvisacolor,
           // Add padding around the search bar
           padding: const EdgeInsets.symmetric(horizontal: 8.0),
           // Use a Material design search bar
           child: TextField(
             controller: _searchController,
             decoration: InputDecoration(
               //focusColor: notifier.getprimeryColor,
               hintText: 'Search...',
               // Add a clear button to the search bar
               suffixIcon: IconButton(
                 icon: Icon(Icons.clear),
                 onPressed: () => _searchController.clear(),
               ),
               // Add a search icon or button to the search bar
              prefixIcon: IconButton(
                 icon: Icon(Icons.search),
                 onPressed: () {
                   // Perform the search here
                 },
               ),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10.0),
               ),
             ),
           )
           ),
              SingleChildScrollView(
                child: Wrap(
                  children:


                  List.generate(itemCount, (index) {
                    return bloc(width, index);
                  }),
                ),
              ),
            ],
          ),
        ),
      );


  }
}
