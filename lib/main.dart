import 'package:college_alert_app/Pages/Auth/loginPage.dart';
import 'package:college_alert_app/Pages/Auth/signupPage.dart';
import 'package:college_alert_app/Pages/admin/AdminEventsPage.dart';
import 'package:college_alert_app/Pages/admin/adminHome.dart';
import 'package:college_alert_app/Pages/admin/admin_auth/adminSignUp.dart';
import 'package:college_alert_app/Pages/admin/admin_auth/adminlogin.dart';
import 'package:college_alert_app/Pages/events.dart';
import 'package:college_alert_app/Configs/firebase_options.dart';
import 'package:college_alert_app/roleSelection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:college_alert_app/Pages/profilepage.dart';
import 'package:college_alert_app/Pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(CollegeEventyApp());
}

class CollegeEventyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'College Eventy',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => RoleSelectionPage(),
        '/user_login': (context) => LoginPage(),
        '/admin_login': (context) => AdminLoginPage(),
        '/user_signup': (context) => SignUpPage(),
        '/admin_signup': (context) => AdminSignUpPage(),
        '/profile': (context) => ProfilePage(),
        '/home': (context) => HomePage(),
        '/admin_home': (context) => AdminHomePage(),
        '/events': (context) => EventsPage(),
        '/admineventspage': (context) => AdminEventsPage(),
    
      },
    );
  }
}
