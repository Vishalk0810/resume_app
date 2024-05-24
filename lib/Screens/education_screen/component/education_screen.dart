import 'package:flutter/material.dart';
import 'package:resume_app/utils/colors.dart';
import '../../../utils/global.dart';


class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Education',
          style: TextStyle(
            color: MyBlue,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    educationModelList.add(
                      EducationModel(
                        school: txtSchool,
                        degree: txtDegree,
                        endYear: txtEnd,
                        startYear: txtStart,
                        location: txtLocation,
                        study: txtStudy,
                      ),
                    );
                  });
                },
                child: const Icon(Icons.add_circle_outline_outlined)),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/skill');
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                'Tell us about your education',
                style: TextStyle(
                  color: MyBlue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  height: 1.2,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  Text(
                    'include every school,even if you`re still',
                    style: TextStyle(color: MyBlue, fontSize: 17),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'there or didn\'t graduate.',
                    style: TextStyle(
                      color: MyBlue,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ...List.generate(
                educationModelList.length,
                    (index) => Column(
                  children: [
                    educationInput(
                      controller: txtSchool,
                      hintText: 'School Name',
                      suffixIcon: const Icon(Icons.search),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    educationInput(
                      controller: txtLocation,
                      hintText: 'Location',
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    educationInput(
                      controller: txtDegree,
                      hintText: 'Degree',
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    educationInput(
                      controller: txtStudy,
                      hintText: 'Field of Study',
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    ...List.generate(
                      1,
                          (index) => Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'GRADUATION START DATE',
                                style: TextStyle(
                                  color: MyBlue,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          educationInputStart(context, txtStart),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            children: [
                              Text(
                                'GRADUATION END DATE',
                                style: TextStyle(
                                  color: MyBlue,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          educationInputStart(context, txtEnd),
                          SizedBox(
                            height: height * 0.04,
                          ),
                        ],
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

  TextFormField educationInputStart(BuildContext context, controller) {
    return TextFormField(
      controller: controller,
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
    );
  }

  TextFormField educationInput(
      {required TextEditingController controller,
        required String hintText,
        suffixIcon}) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.teal,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        suffixIconColor: Colors.grey,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.grey.shade400,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.teal,
            width: 2,
          ),
        ),
      ),
    );
  }
}