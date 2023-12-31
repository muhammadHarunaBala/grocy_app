
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:provider/provider.dart';
import '../../utils/colornotifir.dart';
import '../../utils/mediaqury.dart';
import '../customescreens/custtombutton.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();

}
late ColorNotifier notifier;
TextEditingController my_pin = TextEditingController();




class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40,),
            Center(
              child: Image.asset('assets/s3.png',height: height/2.5,),
            ),
            Row(
              children: [


                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text("Enter Verification Code ",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins_Medium"

                  ),),
                ),


              ],
            ),
            const SizedBox(height: 10,),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text("We have sent SMS to:",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins_Regular"

                ),),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text("01XXXXXXXXXX",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins_Medium"

                ),),
            ),

            const SizedBox(height: 10,),
            animatedBorders(),

            GestureDetector(
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>successful()));
              },
              child:  Custombutton.button(notifier.getprimeryColor, "VERIFY", width/1.3),
            ),
            const SizedBox(height: 50,),

            const Center(
              //margin: EdgeInsets.only(left: 20),
              child: Text("Didn’t receive any code? Resend Again",
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Poppins_bold"

                ),),
            ),

            const Center(
              //margin: EdgeInsets.only(left: 20),
              child: Text("Request new code in 00:30s",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontFamily: "Poppins_regular"

                ),),
            ),

          ],
        ),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FloatingActionButton(
                backgroundColor: notifier.getprimeryColor,
                onPressed: () {
                  //Navigator.push(context, CupertinoPageRoute(builder: (context)=>SignIn()));
                },
                child: Icon(Icons.navigate_before),
              ),

            ],
          ),
        )



    );
  }
  Widget animatedBorders() {
    return Padding(

      padding: const EdgeInsets.all(40.0),
      child: Material(
        //color: Colors.red,
        //margin: EdgeInsets.all(20),
        //color: Colors.transparent,
        // height: height / 15,
       // width: width / 1.2,
        child: PinPut(
          controller: my_pin,
          // onChanged: (v){
          //
          //   if(v.length==4){
          //     if(v==widget.otp){
          //       setState(() {
          //         otp_validate=true;
          //         show_err_otp=false;
          //         session_save(widget.text,widget.token);
          //       });
          //     }else{
          //       setState(() {
          //         otp_validate=false;
          //         show_err_otp=true;
          //       });
          //       //_showToast_otp( context, "Invalid OTP");
          //     }
          //
          //   }else{
          //     setState(() {
          //       otp_validate=false;
          //     });
          //   }
          // },
          textStyle: TextStyle(
              color: notifier.getblack,
              fontFamily: "Gilroy Bold",
              fontSize: height / 40),
          fieldsCount: 6,
         // mainAxisSize: MainAxisSize.values(10),
          eachFieldWidth: width / 10.0,
          eachFieldHeight: 10,
          withCursor: false,
          submittedFieldDecoration: BoxDecoration(
              color: notifier.getvisacolor,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: notifier.getvisacolor))
              .copyWith(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: notifier.getvisacolor)),
          selectedFieldDecoration: BoxDecoration(
              color: notifier.getvisacolor,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: notifier.getvisacolor)),
          followingFieldDecoration: BoxDecoration(
            border: Border.all(color: notifier.getvisacolor),
            color: notifier.getvisacolor,
            borderRadius: BorderRadius.circular(5.0),
          ).copyWith(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }

}
