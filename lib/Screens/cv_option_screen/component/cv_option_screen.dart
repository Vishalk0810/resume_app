import 'package:flutter/material.dart';

import '../../../utils/colors.dart';


class CvOptionScreen extends StatefulWidget {
  const CvOptionScreen({super.key});

  @override
  State<CvOptionScreen> createState() => _CvOptionScreenState();
}

class _CvOptionScreenState extends State<CvOptionScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'CV Option',
            style: TextStyle(color: MyBlue),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                'How do you want to start?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: MyBlue,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/contactInformation');
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  height: height * 0.25,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.edit_document,
                        color: Colors.deepOrange.shade400,
                        size: 80,
                      ),
                      Text(
                        'Create a New CV',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: MyBlue,
                        ),
                      ),
                      Text(
                        'We will help you create a new CV',
                        style: TextStyle(
                          fontSize: 18,
                          height: 0.5,
                          color: MyBlue,
                        ),
                      ),
                      Text(
                        'step by step',
                        style: TextStyle(
                          fontSize: 18,
                          color: MyBlue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: height * 0.28,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.backup_outlined,
                      color: Colors.deepOrange.shade400,
                      size: 80,
                    ),
                    Text(
                      'I have already a CV',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: MyBlue,
                      ),
                    ),
                    Text(
                      'We will extract your information',
                      style: TextStyle(
                        fontSize: 18,
                        height: 0.4,
                        color: MyBlue,
                      ),
                    ),
                    Text(
                      'and apply it to your chosen',
                      style: TextStyle(
                        fontSize: 18,
                        height: 0.4,
                        color: MyBlue,
                      ),
                    ),
                    Text(
                      'template.',
                      style: TextStyle(
                        fontSize: 18,
                        height: 0.4,
                        color: MyBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}