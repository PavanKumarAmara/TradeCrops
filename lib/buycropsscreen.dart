import 'package:flutter/material.dart';
import 'package:untitled/cropavailabilityscreen.dart';

class BuyCropsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BuyCropsScreenState();
}

class _BuyCropsScreenState extends State<BuyCropsScreen> {
  List<String> products = [
    "assets/images/product-icons/onions.png",
    "assets/images/product-icons/potato.png",
    "assets/images/product-icons/tomato.png",
    "assets/images/product-icons/mirchi.png",
    "assets/images/product-icons/carrot.png",
    "assets/images/product-icons/brinjal.png",
    "assets/images/product-icons/capsicum.png",
    "assets/images/product-icons/cabbage.png",
    "assets/images/product-icons/beetroot.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7FFD4),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "CROPS TO BUY",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Color(0xFF79651F)),
                ),
              SizedBox(height: 16,),
              Container(
                padding: EdgeInsets.all(10),
                  child: Column(
                                children: [
                                  for (final product in products)
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => CropAvailabilityScreen()),
                                        );
                                      },
                                      child: Padding(padding: EdgeInsets.all(10),
                                        child: Image.asset(product.toString(),
                                          height: 180, width: 250,),
                                      ) ,
                                    )
                                ],
                    ),),
               ],
            ),
          )),
    );
  }
}
