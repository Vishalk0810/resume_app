import 'package:flutter/material.dart';
import 'Screens/Dashboard/component/dashboard.dart';
import 'Screens/Pdf_screen/component/pdf_screen.dart';
import 'Screens/Splash_screen/component/splash_screen.dart';
import 'Screens/contact_information/component/contact_information.dart';
import 'Screens/cv_option_screen/component/cv_option_screen.dart';
import 'Screens/education_screen/component/education_screen.dart';
import 'Screens/enter_page/component/enter_page.dart';
import 'Screens/login_screen/component/login_screen.dart';
import 'Screens/setings/component/setings_screen.dart';
import 'Screens/skill_screen/component/skill_screen.dart';
import 'Screens/template_screen/component/template.dart';
import 'Screens/work_history_screen/component/work_history.dart';

class MapRoutes{
  static Map<String, Widget Function(BuildContext)>routes = {
    '/':(context)=> const SplashScreen(),
    '/enter':(context)=> const EnterPage(),
    '/login':(context)=> const LoginScreen(),
    '/dashboard':(context)=> const Dashboard(),
    '/settings':(context)=> const SettingScreen(),
    '/template':(context)=> const TemplateScreen(),
    '/cvOption':(context)=> const CvOptionScreen(),
    '/contactInformation':(context)=> const ContactInformation(),
    '/work':(context)=> const WorkHistoryScreen(),
    '/education':(context)=> const EducationScreen(),
    '/skill':(context)=> const SkillScreen(),
    '/pdf':(context)=> const PdfScreen(),
  };
}