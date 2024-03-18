import 'package:flutter/material.dart';

class ProductBuyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProductBuyScreenState();
}

class _ProductBuyScreenState extends State<ProductBuyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE7FFD4),
        body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "BUYING ONIONS FROM FARMER IN HYDERABAD",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: Color(0xFF79651F)),
                      ),
                      SizedBox(height: 32,),
                      Container(
                          width: 350, // Adjust container width as needed
                          padding: EdgeInsets.all(
                              16), // Add padding to the container
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF79651F), width: 0.8),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(20)) //, Add border
                              ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Available Quantity', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38, color:  Color(0xFF79651F)),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:[
                                      Text('59 kgs', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),),
                                      Text('@ 19.5/kg', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38),)
                                    ]),
                                SizedBox(height: 24,),
                                Text('Quantity to buy', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 44, color:  Color(0xFF79651F)),),
                                SizedBox(
                                    height: 16),
                                // Add some space between title and border
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Container(
                                  padding: EdgeInsets.all(10),
                                    width: 100,
                                    child:TextField(
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15.0),
                                          borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white),
                                )),
                                Text("kgs", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 44, color:  Color(0xFF79651F)),)
                              ]),
                            SizedBox(height: 32,),
                            Container(
                              width: 350, // Adjust container width as needed
                              padding: EdgeInsets.all(
                                  16), // Add padding to the container
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xFF79651F), width: 0.8),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20)) //, Add border
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Price Breakup", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color:  Color(0xFF79651F)),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:[
                                          Text("Price", style: TextStyle( fontSize: 28, color:  Color(0xFF79651F)),),
                                          Text("11,800/-", style: TextStyle( fontSize: 28, color:  Color(0xFF79651F)),),
                                        ]),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:[
                                        Text("Platform fee", style: TextStyle( fontSize: 28, color:  Color(0xFF79651F)),),
                                        Text("20/-", style: TextStyle(fontSize: 28, color:  Color(0xFF79651F)),),
                                      ]),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:[
                                        Text("Delivery Fee", style: TextStyle( fontSize: 28, color:  Color(0xFF79651F)),),
                                        Text("450/-", style: TextStyle( fontSize: 28, color:  Color(0xFF79651F)),),
                                      ]),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:[
                                        Text("Total", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color:  Color(0xFF79651F)),),
                                        Text("1270/-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color:  Color(0xFF79651F)),),
                                      ]),
                                  ElevatedButton(
                                    onPressed: () {
                                    },
                                    child: Text(
                                      'Buy Now',
                                      style: TextStyle(color: Colors.white, fontSize: 36),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF14AE5C),
                                    ),
                                  ),
                                ],
                              )),
                              ],
                            ),
                          )),
                    ]))));
  }
}
