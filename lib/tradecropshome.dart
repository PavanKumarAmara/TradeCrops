import 'package:flutter/material.dart';
import 'package:untitled/buycropsscreen.dart';
import 'package:untitled/ordersplaced.dart';
import 'package:untitled/ordersrecieved.dart';
import 'package:untitled/sellcropsscreen.dart';

class TradeCropsHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TradeCropsHomeState();
}

class _TradeCropsHomeState extends State<TradeCropsHome> {
  void ordersPlaced(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OrdersPlacedScreen()),
    );
  }
  void ordersReceived(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OrdersReceivedScreen()),
    );
  }
  void buyCrops(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BuyCropsScreen()),
    );
  }
  void sellCrops(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SellCropsScreen()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE7FFD4),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.fromLTRB(25, 40, 25, 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text("Trade Crops",
                            style: TextStyle(
                                color: Color(0xFF79651F),
                                fontSize: 32,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 140,
                            width: 140,
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "UN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 64),
                                )),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                color: Color(0XFFAFF4C6)),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Amara Pavan Kumar",
                                    style: TextStyle(
                                        color: Color(0xFF79651F),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                Text("7013671219",
                                    style: TextStyle(
                                        color: Color(0xFF79651F),
                                        fontSize: 18)),
                                Text("Male, 14-06-1995",
                                    style: TextStyle(
                                        color: Color(0xFF79651F),
                                        fontSize: 18)),
                                Text("chintal, Hyderbad",
                                    style: TextStyle(
                                        color: Color(0xFF79651F),
                                        fontSize: 18)),
                                Text("500054",
                                    style: TextStyle(
                                        color: Color(0xFF79651F),
                                        fontSize: 18)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Buy Rating : 4 star",
                                    style: TextStyle(
                                        color: Color(0xFF79651F),
                                        fontSize: 16)),
                                Text("Sell Rating : 4.5 star",
                                    style: TextStyle(
                                        color: Color(0xFF79651F), fontSize: 16))
                              ],
                            ),
                          ),
                          Container(
                            child: Text("Notifications",
                                style: TextStyle(
                                    color: Color(0xFF79651F),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24)),
                          ),
                        ],
                      ),
                      SizedBox(height: 64),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                ordersPlaced();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF79651F),
                              ),
                              child: Text("Orders Placed",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16))),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF79651F),
                              ),
                              onPressed: () {
                                ordersReceived();
                              },
                              child: Text("Orders Recieved",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16)))
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF79651F),
                              ),
                              onPressed: () {
                                buyCrops();
                              },
                              child: Text("Buy Crops",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 32))),
                          SizedBox(height: 50),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF79651F),
                              ),
                              onPressed: () {
                                sellCrops();
                              },
                              child: Text("Sell Crops",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 32)))
                        ],
                      )
                    ]))));
  }
}
