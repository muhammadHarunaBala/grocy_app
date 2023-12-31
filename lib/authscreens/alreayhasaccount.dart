import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../customescreens/custtombutton.dart';
import '../utils/colornotifir.dart';
import '../utils/mediaqury.dart';
import 'otp.dart';

class AlreadyHasAccount extends StatefulWidget {
  const AlreadyHasAccount({super.key});

  @override
  State<AlreadyHasAccount> createState() => _AlreadyHasAccountState();
}
TextEditingController number = TextEditingController();
class _AlreadyHasAccountState extends State<AlreadyHasAccount> {
  late ColorNotifier notifier;
  var Txt = number;



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
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(
              child: Image.asset('assets/s3.png',height: height/2,),
            ),

            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text('Enter the password',style: TextStyle(
                    fontSize: height / 50,
                    fontFamily: 'Poppins_Bold',


                  ),),
                ),

              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text('We need to verify you. We will send you \n a on  time verification code.',style: TextStyle(
                    fontSize: height / 50,
                    fontFamily: 'Poppins_Medium',


                  ),),
                ),

              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text('Phone Number',style: TextStyle(
                      fontFamily: "Poppins_Medium",
                      color: Colors.grey
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
            SizedBox(height: height / 20),
            GestureDetector(
              onTap: (){
                 var phone_num;
                Navigator.push(context, MaterialPageRoute(builder: (context)=> OTP(),));
              },
              child: Custombutton.button(notifier.getprimeryColor, "Sign In", width/1.2),
            ),
          ],
        ),

      ),
    );
  }
}
