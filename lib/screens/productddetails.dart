import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../authscreens/otp.dart';
import '../customescreens/custtombutton.dart';
import '../utils/mediaqury.dart';
import 'cart.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Product Details",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: height/2.5,
                width: width/1.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200
        
        
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Image.asset('assets/s4.png'),
                  ),
                ),
        
              ),
        
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                    child: Text('Arla DANO Full Cream Milk Powder Instant')),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                    child: Text("1 Kg")),
                Container(
                  margin: EdgeInsets.only(right: 20),
                    child: Text("500")),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.read_more_outlined),
                ),
                SizedBox(width: 10,),
                
                Text('Dairy Products')

              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Et quidem faciunt, ut summum bonum sit extremum etrationibus conquisitis de voluptate. Sed ut summum bonum sit i'),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
              },
              child:  Custombutton.button(Colors.lightGreen, "Add to Bag", width/1.3),
            ),
          ],
        ),
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
