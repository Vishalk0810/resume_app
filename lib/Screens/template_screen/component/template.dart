import 'package:flutter/material.dart';
import 'package:resume_app/utils/colors.dart';

class TemplateScreen extends StatefulWidget {
  const TemplateScreen({super.key});

  @override
  State<TemplateScreen> createState() => _TemplateScreenState();
}

class _TemplateScreenState extends State<TemplateScreen> {
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
          title: Text('CHOOSE TEMPLATE',style: TextStyle(
            color: MyBlue,
          ),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Browse and select the\ntemplate for your CV',style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: MyBlue,
                  ),),
                ],
              ),
              SizedBox(height: 40,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    template_img(height,width),
                    SizedBox(width: 30,),
                    template_img(height,width),
                    SizedBox(width: 30,),
                    template_img(height,width),
                    SizedBox(width: 30,),
                    template_img(height,width),
                  ],
                ),
              ),
              SizedBox(height: 76,),
              // Container(
              //   height: height * 0.148,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: Colors.yellow.shade100,
              //   ),
              // ),
              Container(
                height: height * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    colors(Color: Colors.black),
                    colors(Color: Colors.amber),
                    colors(Color: Colors.red),
                    colors(Color: Colors.blue),
                    colors(Color: Colors.teal),
                    colors(Color: Colors.purple),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/cvOption');
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
                    'Select this Template',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 0.9,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container template_img(double height,double width) {
    return Container(
                    height: height * 0.40,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/Images/1.png'),
                        fit: BoxFit.cover,
                      )
                    ),
                  );
  }

  Container colors({required Color}) {
    return Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color,
                      shape: BoxShape.circle,
                    ),
                  );
  }
}
