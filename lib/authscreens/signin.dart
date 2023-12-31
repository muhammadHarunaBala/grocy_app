import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../customescreens/custtombutton.dart';
import '../utils/colornotifir.dart';
import '../utils/mediaqury.dart';
import 'alreayhasaccount.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}
TextEditingController number = TextEditingController();
class _SignInState extends State<SignIn> {
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
              child: Image.asset('assets/s5.png',height: height/2,),
            ),
            
            SizedBox(height: 20,),
             Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text('Enter your mobile number',style: TextStyle(
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
            SizedBox(height: height / 20),
            GestureDetector(
              onTap: (){
                 var phone_num;
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AlreadyHasAccount(),));
              },
              child: Custombutton.button(notifier.getprimeryColor, "Sign In", width/1.2),
            ),
          ],
        ),

      ),
    );
  }
}
