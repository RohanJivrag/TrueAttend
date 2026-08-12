import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'screens/auth/login_screen.dart';


void main() {

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const TrueAttendApp());

}



class TrueAttendApp extends StatelessWidget {

  const TrueAttendApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: "TrueAttend",

      theme: AppTheme.lightTheme,

      home: const LoginScreen(),

    );

  }
}