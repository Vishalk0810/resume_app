import 'package:flutter/material.dart';
import 'package:resume_app/utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

GlobalKey<FormState> formkey = GlobalKey();
var txtEmail = TextEditingController();
var txtPassword = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'REGISTRATION',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: MyBlue),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: MyBlue,
                          letterSpacing: 0.7,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: height * 0.065,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 2,
                              spreadRadius: 1,
                              offset: Offset(0, 1))
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Images/google.png',
                          height: 45,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                              fontSize: 19, color: Colors.grey.shade700),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    '---------- or login with ----------',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  inputType(
                      hint: 'Email Address',
                      Controler: txtEmail,
                      inputType: TextInputType.emailAddress,
                      ObscureText: false),
                  SizedBox(
                    height: 25,
                  ),
                  inputType(
                      hint: 'Password',
                      Controler: txtPassword,
                      inputType: TextInputType.number,
                      ObscureText: true),
                  SizedBox(
                    height: 50,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot you Password',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blueAccent,
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Terms | Privacy | contact Us'),
                  SizedBox(
                    height: 160,
                  ),
                  GestureDetector(
                    onTap: () {
                      bool responce = formkey.currentState!.validate();
                      if(responce)
                        {
                          Navigator.pushNamed(context, '/dashboard');
                        }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height * 0.07,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          letterSpacing: 0.9,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox inputType(
      {required String hint,
      required Controler,
      required inputType,
      ObscureText}) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        validator: (value) {
          if(value!.isEmpty)
            {
              return 'Required';
            }
          return null;
        },
        obscureText: ObscureText,
        keyboardType: inputType,
        controller: Controler,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: Colors.grey.shade400)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.teal)),
          hintText: hint,
        ),
      ),
    );
  }
}
