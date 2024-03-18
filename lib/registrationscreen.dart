import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
            Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.contain,
              height: 280,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300, // Adjust container width as needed
              padding: EdgeInsets.all(16), // Add padding to the container
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF79651F), width: 0.8),
                  borderRadius:
                      BorderRadius.all(Radius.circular(20)) //, Add border
                  ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Introduce Yourself',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF79651F)),
                    ),
                    SizedBox(
                        height: 24), // Add some space between title and border
                    TextField(
                      style: TextStyle(height: 0.6),
                      decoration: InputDecoration(
                          labelText: 'Full Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(height: 16), // Add some space between fields
                    TextField(
                      style: TextStyle(height: 0.6),
                      decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      obscureText: true,
                      style: TextStyle(height: 0.6),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      style: TextStyle(height: 0.6),
                      decoration: InputDecoration(
                          labelText: 'Mobile number',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      style: TextStyle(height: 0.6),
                      decoration: InputDecoration(
                          labelText: 'Gender',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      style: TextStyle(height: 0.6),
                      decoration: InputDecoration(
                          labelText: 'Date of Birth',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      style: TextStyle(height: 0.6),
                      decoration: InputDecoration(
                          labelText: 'House no',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      style: TextStyle(height: 0.6),
                      decoration: InputDecoration(
                          labelText: 'Street/Landmark',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      style: TextStyle(height: 0.6),
                      decoration: InputDecoration(
                          labelText: 'City',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      style: TextStyle(height: 0.6),
                      decoration: InputDecoration(
                          labelText: 'State',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      style: TextStyle(height: 0.6),
                      decoration: InputDecoration(
                          labelText: 'Pincode',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      style: TextStyle(height: 0.6),
                      decoration: InputDecoration(
                          labelText: 'India',
                          enabled: false,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Implement login functionality
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF79651F),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Text("Powered by Amara family",
                    style: TextStyle(
                        color: Color(0xFF79651F),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)))
          ],
        ),
      )),
    );
  }
}
