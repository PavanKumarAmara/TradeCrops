import 'package:flutter/material.dart';
import 'package:untitled/forgotpassword.dart';
import 'package:untitled/registrationscreen.dart';
import 'package:untitled/tradecropshome.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool validateInputs() {
    // Validate username and password
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      return false;
    }
    // Add any other validation logic here (e.g., password length, format)
    return true;
  }

  void loginUser() {
    if (validateInputs()) {
      // Implement login functionality
      // For demo purposes, we'll simply navigate to the home screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => TradeCropsHome()),
      );
    } else {
      // Show error message or perform other actions for invalid inputs
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please enter valid username and password.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(0,231,255,212),
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
                      'Ready to trade crops?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF79651F)),
                    ),
                    SizedBox(
                        height: 24), // Add some space between title and border
                    TextField(
                      controller: usernameController,
                      // style: TextStyle(height: 0.6),
                      decoration: InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(height: 16), // Add some space between fields
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      // style: TextStyle(height: 0.6),
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
                    ElevatedButton(
                      onPressed: () {
                        loginUser();
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF79651F),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPasswordScreen()),
                            );
                          },
                          child: Text("Forgot Password?",
                              style: TextStyle(
                                  color: Color(0xFF79651F),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          width: 40,
                          height: 70,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegistrationScreen()),
                            );
                          },
                          child: Text("Register",
                            style: TextStyle(
                                color: Color(0xFF79651F),
                                fontSize: 18,
                                fontWeight: FontWeight.bold)))
                      ],
                    )
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
