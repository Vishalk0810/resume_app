import 'dart:io';
import 'package:flutter/material.dart';
import 'package:resume_app/main.dart';
import 'package:resume_app/utils/colors.dart';
import 'package:image_picker/image_picker.dart';

class ContactInformation extends StatefulWidget {
  const ContactInformation({super.key});

  @override
  State<ContactInformation> createState() => _ContactInformationState();
}

ImagePicker imagePicker = ImagePicker();
File? fileImage;
TextEditingController txtname =TextEditingController();
TextEditingController txtsurname =TextEditingController();
TextEditingController txtEmail =TextEditingController();
TextEditingController txtpass =TextEditingController();
TextEditingController txtContact =TextEditingController();
TextEditingController txtcity =TextEditingController();
TextEditingController txtcountry =TextEditingController();
TextEditingController txtpincode =TextEditingController();
TextEditingController txtlinkedIn =TextEditingController();
TextEditingController txtwebsite =TextEditingController();
TextEditingController txtnationality =TextEditingController();

class _ContactInformationState extends State<ContactInformation> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: GestureDetector(
          onTap: () {

            Navigator.of(context).pushNamed('/work');

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
              'Continue',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.black,
        centerTitle: true,
        title: Text('Contact information',style: TextStyle(
          color: MyBlue,
          fontSize: 21

        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text('Preview',style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text("What's the best way for\nemployers to Contact\nyou?",style: TextStyle(
                    color: MyBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('We suggest including an email an phone\nnumber.',style: TextStyle(
                    color: MyBlue,
                    fontSize: 17,
                    fontWeight: FontWeight.w400
                  ),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: height * 0.14,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                        image: (fileImage != null)
                            ? DecorationImage(
                          fit: BoxFit.cover,
                          image: FileImage(fileImage!),
                        )
                            : null,
                      color: Colors.white,
                      border: Border.all(width: 1,color: Colors.grey),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('   '
                              'Add a photo to your CV',style: TextStyle(
                            color: MyBlue,
                            fontSize: 18
                          ),),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Supported files format\nare .JPEG, .PNG, and .HEIC.Size\nlimit is set at 4MB',style: TextStyle(
                            fontSize: 12
                          ),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: IconButton(
                            onPressed: () async {
                              XFile? xFileImage = await imagePicker.pickImage(
                                  source: ImageSource.gallery);
                              setState(() {
                                fileImage = File(xFileImage!.path);
                              });
                            },
                            icon: Row(
                              children: [
                                Icon(Icons.add,color: Colors.blueAccent,),
                                Text('Upload Photo',style: TextStyle(
                                  color: Colors.blueAccent
                                ),)
                              ],
                            )),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Informations(inputType: TextInputType.name,hint: 'First Name',label: 'First Name',controler: txtname),
              SizedBox(height: 10,),
              Informations(inputType: TextInputType.name,hint: 'Last Name',label: 'Last Name',controler: txtsurname),
              SizedBox(height: 10,),
              Informations(inputType: TextInputType.name,hint: 'Email Address(required)',label: 'Email Address(required)',controler: txtEmail),
              SizedBox(height: 10,),
              Informations(inputType: TextInputType.number,hint: 'Password',label: 'Password',controler: txtpass),
              SizedBox(height: 10,),
              Informations(inputType: TextInputType.number,hint: 'Phone Number',label: 'Phone Number',controler: txtContact),
              SizedBox(height: 10,),
              Informations(inputType: TextInputType.name,hint: 'City',label: 'City',controler: txtcity),
              SizedBox(height: 10,),
              Informations(inputType: TextInputType.name,hint: 'Country',label: 'Country',controler: txtcountry),
              SizedBox(height: 10,),
              Informations(inputType: TextInputType.number,hint: 'Pincode',label: 'Pincode',controler: txtpincode),
              SizedBox(height: 10,),
              Informations(inputType: TextInputType.name,hint: 'LinkedIn(Optional)',label: 'LinkedIn(Optional)',controler: txtlinkedIn),
              SizedBox(height: 10,),
              Informations(inputType: TextInputType.name,hint: 'Website(Optional)',label: 'Website(Optional)',controler: txtwebsite),
              SizedBox(height: 10,),
              Informations(inputType: TextInputType.name,hint: 'Nationality(Optional)',label: 'Nationality(Optional)',controler: txtnationality),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField Informations({required String hint,required String label,required controler,required inputType}) {
    return TextFormField(
      controller: controler,
              keyboardType: inputType,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: hint,
                labelText: label,
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 1.5,color: Colors.grey.shade400),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2,color: Colors.teal),
                ),
              ),
            );
  }
}

