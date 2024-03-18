import 'package:flutter/material.dart';
import 'package:untitled/productbuyscreen.dart';

class CropAvailabilityScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CropAvailabilityScreenState();

}

class _CropAvailabilityScreenState extends State<CropAvailabilityScreen>{
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
                const Text("BUY ONIONS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Color(0xFF79651F)),),
                Padding(padding: EdgeInsets.all(10),
                child:  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:DataTable(
                  columns: <DataColumn>[
                    DataColumn(
                      label: Text(
                        'FarmerId',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Location',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Quantity (kg)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),DataColumn(
                      label: Text(
                        'Price (per kg)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),DataColumn(
                      label: Text(
                        'Availability Date',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  rows: <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('102')),
                        DataCell(Text('Hyderabad')),
                        DataCell(Text('120')),
                        DataCell(Text('19.5')),
                        DataCell(Text('Available')),
                      ],
                      onSelectChanged: (isSelected){
                        if(isSelected!){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductBuyScreen()));
                        }
                      }
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('205')),
                        DataCell(Text('Secundrabad')),
                        DataCell(Text('50')),
                        DataCell(Text('18.5')),
                        DataCell(Text('Available')),
                      ], onSelectChanged: (isSelected){
                      if(isSelected!){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductBuyScreen()));
                      }
                    }
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('192')),
                        DataCell(Text('Medchal')),
                        DataCell(Text('89')),
                        DataCell(Text('17.25')),
                        DataCell(Text('Available')),
                      ], onSelectChanged: (isSelected){
                      if(isSelected!){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductBuyScreen()));
                      }
                    }
                    ),
                  ],
                )
                ))

              ],
            ),
          )

      ),
    );
  }

}