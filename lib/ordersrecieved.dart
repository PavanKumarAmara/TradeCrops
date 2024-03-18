import 'package:flutter/material.dart';

class OrdersReceivedScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _OrdersReceivedScreenState();

}

class _OrdersReceivedScreenState extends State<OrdersReceivedScreen>{
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
                Text("ORDERS RECEIVED", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Color(0xFF79651F)),),
                SizedBox(height: 32,),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF79651F), width: 0.8),
                      borderRadius:
                      BorderRadius.all(Radius.circular(20)) //, Add border
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("OrderID :  101"),
                            Text("FarmerID :  111"),
                            Text("Product :  Onions"),
                            Text("Quantity:  50kgs"),
                            Text("Price per kg:  Rs 10.5"),
                          ],
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF79651F),
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5), // Color of the shadow
                                spreadRadius: 3, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: Offset(0, 4), // Offset of the shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20), // Adjust the value as needed
                          ),
                          child: Text("  Order Received  ", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.arrow_circle_right_outlined, color: Color(0xFF79651F)
                        ),)
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }

}