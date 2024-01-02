import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bottombar/bottombar.dart';
import '../customescreens/custtombutton.dart';
import '../screens/home.dart';
import '../utils/colornotifir.dart';
import '../utils/mediaqury.dart';
import 'alreayhasaccount.dart';

class ChoosePassword extends StatefulWidget {
  const ChoosePassword({super.key});

  @override
  State<ChoosePassword> createState() => _ChoosePasswordState();
}

class _ChoosePasswordState extends State<ChoosePassword> {
  late ColorNotifier notifier;
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Choose a Password",
          style: TextStyle(

            color: notifier.getblack,
            fontSize: height / 50,
            fontFamily: 'Poppins_Medium',
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
          const SizedBox(height: 20,),
          Container(
              margin: const EdgeInsets.all(20),
              child: const Text("For the security & safety please choose a password")),
          const SizedBox(height: 20,),
          Center(
            child: Image.asset('assets/s4.png'),
          ),


          const SizedBox(height: 30,),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white70,
            ),
            margin: const EdgeInsets.only(left: 20,right: 20),

            child: Row(
              children: [
                Container(
                  color: Colors.transparent,
                  height: height / 15,
                  width: width / 1.2,
                  child: TextField(
                    controller: number,
                    keyboardType: TextInputType.number,
                    style:   TextStyle(color: notifier.getblack,),
                    decoration: InputDecoration(

                      suffixIcon: IconButton(
                        icon: const Icon(Icons.remove_red_eye), onPressed: () {

                      },
                        //onPressed: () => _searchController.clear(),
                      ),
                      // Add a search icon or button to the search bar
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.lock),
                        onPressed: () {
                          // Perform the search here
                        },
                      ),

                      // filled: true,
                      contentPadding: EdgeInsets.only(left: height / 80),
                      // fillColor: notifier.getwihitecolor,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Password",
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
          const SizedBox(height: 20,),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white70,
            ),
            margin: const EdgeInsets.only(left: 20,right: 20),

            child: Row(
              children: [
                Container(
                  color: Colors.transparent,
                  height: height / 15,
                  width: width / 1.2,
                  child: TextField(
                    controller: number,
                    keyboardType: TextInputType.number,
                    style:   TextStyle(color: notifier.getblack,),
                    decoration: InputDecoration(

                      suffixIcon: IconButton(
                        icon: const Icon(Icons.remove_red_eye), onPressed: () {

                      },
                        //onPressed: () => _searchController.clear(),
                      ),
                      // Add a search icon or button to the search bar
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.lock),
                        onPressed: () {
                          // Perform the search here
                        },
                      ),

                      // filled: true,
                      contentPadding: EdgeInsets.only(left: height / 80),
                      // fillColor: notifier.getwihitecolor,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Confirm Password",
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

          const SizedBox(height: 20,),

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            },
            child:  Custombutton.button(notifier.getprimeryColor, "Finish, Good to go", width/1.3),
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
