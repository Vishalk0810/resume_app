import 'package:flutter/material.dart';
import 'package:resume_app/utils/colors.dart';

import '../../../utils/global.dart';

class WorkHistoryScreen extends StatefulWidget {
  const WorkHistoryScreen({super.key});

  @override
  State<WorkHistoryScreen> createState() => _WorkHistoryScreenState();
}

GlobalKey<FormState> formKey = GlobalKey();
var txtJobTittle = TextEditingController(text: 'Flutter');
var txtEmployee = TextEditingController(text: 'Yes');
var txtCityW = TextEditingController(text: 'Surat');
var txtCountryW = TextEditingController(text: 'India');

class _WorkHistoryScreenState extends State<WorkHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 1,
          shadowColor: Colors.black,
          title: Text(
            'Work History',
            style: TextStyle(
              color: MyBlue,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Tell us about your work experience.',
                    style: TextStyle(
                      color: MyBlue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Start with your most recent job and work backward',
                    style: TextStyle(
                      color: MyBlue,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  workHistoryInput(hintText: 'Job Title'),
                  const SizedBox(
                    height: 20,
                  ),
                  workHistoryInput(hintText: 'Employee'),
                  const SizedBox(
                    height: 20,
                  ),
                  workHistoryInput(hintText: 'City'),
                  const SizedBox(
                    height: 20,
                  ),
                  workHistoryInput(hintText: 'Country'),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: txtBirthDate,
                    cursorColor: Colors.teal,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() async {
                            datePicker = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1980),
                              lastDate: DateTime(2025),
                            );
                            if (datePicker != null) {
                              birthDate =
                              '${datePicker!.day}/${datePicker!.month}/${datePicker!.year}';
                              txtBirthDate.text = birthDate;
                            }
                          });
                        },
                        child: const Icon(Icons.calendar_month_outlined),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.teal,
                        ),
                      ),
                      hintText: 'dd/mm/yy',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 195,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/education');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height * 0.07,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
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

  TextFormField workHistoryInput({required String hintText}) {
    return TextFormField(
      cursorColor: Colors.teal,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.teal,
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey.shade400,
        ),
      ),
    );
  }
}