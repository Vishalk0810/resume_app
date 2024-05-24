import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app/utils/colors.dart';
import 'package:resume_app/utils/global.dart';

class EnterPage extends StatefulWidget {
  const EnterPage({super.key});

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppName(Size: 22.00),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                      child: Text(
                        'Login',
                        style:
                            TextStyle(fontSize: 18, color: Colors.blueAccent),
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: height * 0.24,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Images/banner.jpg'),
                      fit: BoxFit.cover),
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Just three',
                    style: TextStyle(
                        color: MyBlue,
                        fontSize: 35,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Simple steps',
                    style: TextStyle(
                        color: MyBlue,
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        height: 0.8),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ScreenDetails(
                number: '1',
                text: 'Select a CV form our library of\nprofessional designs',
              ),
              SizedBox(
                height: 20,
              ),
              ScreenDetails(
                  number: '2',
                  text:
                      'Build your CV with our\nindustry-specific bullet points'),
              SizedBox(
                height: 20,
              ),
              ScreenDetails(
                  number: '3',
                  text:
                      'Download your CV,print it out\nand get it ready to send!'),
              SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'By clicking Create My CV you agree to our ',
                    style: TextStyle(
                      color: MyBlue,
                    ),
                  ),
                  Text(
                    'Terms of',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blueAccent,
                      decorationColor: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              Text(
                'Use and privacy policy',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blueAccent,
                  decorationColor: Colors.blueAccent,
                ),
              ),
              SizedBox(
                height: 17,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/template');
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
                    'Create My CV',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row ScreenDetails({
    required String number,
    required String text,
  }) {
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
          child: Text(
            number,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.amber.shade400,
        ),
        SizedBox(
          width: 13,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 20, color: MyBlue),
            ),
          ],
        ),
      ],
    );
  }
}
