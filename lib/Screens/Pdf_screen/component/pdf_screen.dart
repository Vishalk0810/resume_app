import 'dart:io';
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_app/Screens/skill_screen/component/skill_screen.dart';
import 'package:resume_app/Screens/work_history_screen/component/work_history.dart';
import 'package:resume_app/utils/global.dart';
import 'dart:typed_data';
import '../../contact_information/component/contact_information.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PdfPreview(
          build: (format) => generatePdf(),
        ),
      ),
    );
  }
}

Future<Uint8List> generatePdf() {
  final pdf = pw.Document();
  final image = pw.MemoryImage(
    File(fileImage!.path).readAsBytesSync(),
  );
  pdf.addPage(
    pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Row(
            children: [
              pw.Container(
                height: double.infinity,
                width: 200,
                color: const PdfColor.fromInt(0xff000000),
                child: pw.Column(
                  children: [
                    pw.SizedBox(
                      height: 30,
                    ),
                    pw.Container(
                      height: 100,
                      width: 100,
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                          width: 3,
                          color: PdfColors.black,
                        ),
                      ),
                      child: pw.Image(image),
                    ),
                    pw.SizedBox(
                      height: 30,
                    ),
                    pw.Divider(color: PdfColors.blue,height: 2,endIndent: 10,indent: 10),
                    pw.Text('About Me',style: pw.TextStyle(color: PdfColors.white,fontSize: 20)),
                    pw.Divider(color: PdfColors.blue,height: 2,endIndent: 10,indent: 10),
                    pw.SizedBox(height: 10,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('Name:- ${txtname.text} ${txtsurname.text}',style: pw.TextStyle(
                          color: PdfColors.white,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 10,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10),
                        pw.Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\nindustry. Lorem Ipsum has been\nthe industry's standard dummy \nindustry's standard dummy\ntext  specimen book.",style: pw.TextStyle(color: PdfColors.white)),
                      ],
                    ),
                    pw.SizedBox(height: 20,),
                    pw.Divider(color: PdfColors.blue,height: 2,endIndent: 10,indent: 10),
                    pw.Text('Contact Information',style: pw.TextStyle(
                      color: PdfColors.white,
                      fontSize: 20
                    )),
                    pw.Divider(color: PdfColors.blue,height: 2,endIndent: 10,indent: 10),
                    pw.SizedBox(height: 10,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('Contact No:- ${txtContact.text}',style: pw.TextStyle(
                          color: PdfColors.white,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 5,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('Email:- ${txtEmail.text}',style: pw.TextStyle(
                          color: PdfColors.white,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 5,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('City:- ${txtcity.text}',style: pw.TextStyle(
                          color: PdfColors.white,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 5,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('Country:- ${txtcountry.text}',style: pw.TextStyle(
                          color: PdfColors.white,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 5,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('Pincode :- ${txtpincode.text}',style: pw.TextStyle(
                          color: PdfColors.white,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 5,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('LinkedIn:- ${txtlinkedIn.text}',style: pw.TextStyle(
                          color: PdfColors.white,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 5,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('Website:- ${txtwebsite.text}',style: pw.TextStyle(
                          color: PdfColors.white,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 5,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('Nationality:- ${txtnationality.text}',style: pw.TextStyle(
                          color: PdfColors.white,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 10,),
                    pw.Divider(color: PdfColors.blue,height: 2,endIndent: 10,indent: 10),
                  ],
                ),
              ),
              pw.Container(
                padding: pw.EdgeInsets.all(20),
                height: double.infinity,
                width: 300,
                decoration: pw.BoxDecoration(
                  color: PdfColors.amber,
                ),
                child: pw.Column(
                  children: [
                    pw.SizedBox(height: 10,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('${txtname.text} ${txtsurname.text}',style: pw.TextStyle(
                          color: PdfColors.black,
                          fontSize: 40,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 10),
                    pw.Divider(color: PdfColors.blue,height: 2,endIndent: 10,indent: 10),
                    pw.SizedBox(height: 30,),
                    pw.Divider(color: PdfColors.blue,height: 2,endIndent: 10,indent: 10),
                    pw.Text('Experience',style: pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.black,
                    )),
                    pw.Divider(color: PdfColors.blue,height: 2,endIndent: 10,indent: 10),
                    pw.SizedBox(height: 10,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('Job Tittle :- ${txtJobTittle.text}',style: pw.TextStyle(
                          color: PdfColors.black,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 5,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('Employee :- ${txtEmployee.text}',style: pw.TextStyle(
                          color: PdfColors.black,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 5,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('City :- ${txtCityW.text}',style: pw.TextStyle(
                          color: PdfColors.black,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 5,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('Country :- ${txtCountryW.text}',style: pw.TextStyle(
                          color: PdfColors.black,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 20),
                    pw.Divider(color: PdfColors.blue,height: 2,endIndent: 10,indent: 10),
                    pw.Text('Education',style: pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.black,
                    )),
                    pw.Divider(color: PdfColors.blue,height: 2,endIndent: 10,indent: 10),
                    pw.SizedBox(height: 10),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('School/University :- ${txtSchool.text}',style: pw.TextStyle(
                          color: PdfColors.black,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 5),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('Location :- ${txtLocation.text}',style: pw.TextStyle(
                          color: PdfColors.black,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 5),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('Field of Study :- ${txtStudy.text}',style: pw.TextStyle(
                          color: PdfColors.black,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 5),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('Degree :- ${txtDegree.text}',style: pw.TextStyle(
                          color: PdfColors.black,
                        )),
                      ],
                    ),
                    pw.SizedBox(height: 20),
                    pw.Divider(color: PdfColors.blue,height: 2,endIndent: 10,indent: 10),
                    pw.Text('Skills',style: pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.black,
                    )),
                    pw.Divider(color: PdfColors.blue,height: 2,endIndent: 10,indent: 10),
                    pw.SizedBox(height: 10,),
                    pw.Row(
                      children: [
                        pw.SizedBox(width: 10,),
                        pw.Text('Skills :- ${txtSkills.text}',style: pw.TextStyle(
                          color: PdfColors.black,
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
  );
  return pdf.save();
}