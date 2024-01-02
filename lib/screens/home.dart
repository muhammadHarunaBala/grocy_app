import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocy_app/authscreens/otp.dart';
import 'package:grocy_app/utils/mediaqury.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(

        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.white60,
                  Colors.deepOrangeAccent,
                ],
              )
          ),
          child: Column(
            children: [
              const SizedBox(height: 80,),
           Row(
             children: [
               Container(
                 margin: const EdgeInsets.only(left: 20),
                   child: const Text('Good morning Muhammad',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),

             ],
           ),
            SizedBox(height: 10,),
           Container(
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
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          )
          ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        //margin: const EdgeInsets.all(20),
                        height: 150,
                        width: width/2.5,

                        child: const Column(
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        //margin: const EdgeInsets.all(20),
                        height: 150,
                        width: width/2.5,

                        child: const Column(
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        margin: const EdgeInsets.all(20),
                        height: 150,
                        width: width/3,

                        child: const Column(
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        margin: const EdgeInsets.all(20),
                        height: 150,width: 150,

                        child: const Column(
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        margin: EdgeInsets.all(20),
                        height: 150,width: 150,

                        child: Column(
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        margin: EdgeInsets.all(20),
                        height: 150,width: 150,

                        child: Column(
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        margin: EdgeInsets.all(20),
                        height: 150,width: 150,

                        child: Column(
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        margin: EdgeInsets.all(20),
                        height: 150,width: 150,

                        child: Column(
                        ),
                      ),
                    ],
                  ),

                ],

              )
            ],
          ),
        ),
      ),

    );
  }
}
