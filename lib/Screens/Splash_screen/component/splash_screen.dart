import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app/utils/colors.dart';
import '../../../utils/global.dart';
import '../../enter_page/component/enter_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState()
  {
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => EnterPage(),));
    },);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.black),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 700,
            width: 400,
            decoration: BoxDecoration(
                color: MyYellow,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(80),
                    bottomLeft: Radius.circular(80))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 190,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Images/logo.png'),
                          fit: BoxFit.cover),
                      color: MyYellow,
                      borderRadius: BorderRadius.circular(15)),
                ),
                SizedBox(
                  height: 10,
                ),
                AppName(Size: 30.00),
                SizedBox(height: 10,),
                LinearProgressIndicator(
                  minHeight: 3,
                  backgroundColor: MyYellow,
                  color: MyRed,
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
