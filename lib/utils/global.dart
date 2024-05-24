import 'package:flutter/material.dart';

import 'colors.dart';

Row AppName({required Size}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('My',style: TextStyle(
        fontSize: Size,
        fontWeight: FontWeight.w600,
        color: MyBlue,
      ),),
      Text('perfect',style: TextStyle(
        fontSize: Size,
        fontWeight: FontWeight.w600,
        color: MyRed,
      ),),
      Text('CV',style: TextStyle(
        fontSize: Size,
        fontWeight: FontWeight.w600,
        color: MyBlue,
      ),),
    ],
  );
}

List settingDetails = [
  'Account info', 'Subscription', 'Downloads', 'Notifications', 'Contact support', 'FAQ\'s', 'Send Feedback'
];

var txtBirthDate = TextEditingController();
var txtSchool = TextEditingController();
var txtLocation = TextEditingController();
var txtDegree = TextEditingController();
var txtStudy = TextEditingController();
var txtStart = TextEditingController();
var txtEnd = TextEditingController();

DateTime? datePicker;
String birthDate = '';

class EducationModel {
  TextEditingController? school;
  TextEditingController? location;
  TextEditingController? degree;
  TextEditingController? study;
  TextEditingController? startYear;
  TextEditingController? endYear;

  EducationModel({
    this.school,
    this.degree,
    this.location,
    this.startYear,
    this.endYear,
    this.study,
  });
}

List<EducationModel> educationModelList = [
  EducationModel(school: txtSchool, degree: txtDegree, endYear: txtEnd, startYear: txtStart, location: txtLocation, study: txtStudy),
];

