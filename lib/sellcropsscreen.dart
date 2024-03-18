import 'package:flutter/material.dart';

class SellCropsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SellCropsScreenState();

}

class _SellCropsScreenState extends State<SellCropsScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7FFD4),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.topCenter,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("SELL CROPS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Color(0xFF79651F)),),
              ],
            ),
          )

      ),
    );
  }

}