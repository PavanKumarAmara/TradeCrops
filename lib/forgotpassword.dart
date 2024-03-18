import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ForgotPasswordScreenState();

}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen>{
  bool showSendOTPButton = true; // Variable to control the visibility of the "Send OTP" button

  void sendOTP() {
    // Implement OTP sending functionality
    setState(() {
      showSendOTPButton = false; // Hide the button after it is clicked
    });
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
                      border: Border.all(color: Color(0xFF79651F),
                          width: 0.8),
                      borderRadius: BorderRadius.all(Radius.circular(20))//, Add border
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Forgot Password?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF79651F)
                          ),
                        ),
                        SizedBox(
                            height: 24), // Add some space between title and border
                        TextField(
                          style: TextStyle(height: 0.6),
                          decoration: InputDecoration(
                              labelText: 'Username',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide.none
                              ),
                              filled: true,
                              fillColor: Colors.white
                          ),
                        ),
                        SizedBox(height: 16), // Add some space between fields
                        TextField(
                          obscureText: true,
                          style: TextStyle(height: 0.6),
                          decoration: InputDecoration(
                            labelText: 'New Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide.none

                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Visibility(
                            visible: showSendOTPButton,
                            child:ElevatedButton(
                          onPressed: () {
                           sendOTP();
                          },

                          child: Text('Send Otp', style: TextStyle(color: Colors.white, fontSize: 20),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF79651F),
                          ),
                        )),
                    Visibility(
                      visible: !showSendOTPButton,
                      child: SizedBox(height: 16),),
                        Visibility(
                          visible: !showSendOTPButton,
                          child: TextField(
                          obscureText: true,
                          style: TextStyle(height: 0.6),
                          decoration: InputDecoration(
                            labelText: 'Enter OTP',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide.none

                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),),

                        SizedBox(height: 16),
                        Visibility(
                          visible: !showSendOTPButton,
                          child:ElevatedButton(
                          onPressed: () {
                            // Implement login functionality
                          },
                          child: Text('Change password', style: TextStyle(color: Colors.white, fontSize: 20),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF79651F),
                          ),
                        ), ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Align(
                    alignment: Alignment.bottomCenter,
                    child:Text("Powered by Amara family", style: TextStyle(color: Color(0xFF79651F), fontSize: 20, fontWeight: FontWeight.bold)))
              ],
            ),
          )),
    );
  }

}