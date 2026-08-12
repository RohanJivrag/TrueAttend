import 'package:flutter/material.dart';

import '../student/student_home.dart';
import '../teacher/teacher_home.dart';


class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});


  @override
  State<LoginScreen> createState() =>
      _LoginScreenState();

}



class _LoginScreenState
    extends State<LoginScreen> {


  final emailController =
      TextEditingController();


  final passwordController =
      TextEditingController();



  String role = "student";



  void login() {


    // Temporary role checking
    // Later replace with API response


    if(role == "student") {


      Navigator.pushReplacement(

        context,

        MaterialPageRoute(

          builder: (_) =>
              const StudentHome(),

        ),

      );


    }

    else {


      Navigator.pushReplacement(

        context,

        MaterialPageRoute(

          builder: (_) =>
              const TeacherHome(),

        ),

      );


    }

  }





  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor:
          const Color(0xffF8FAFC),


      body: Center(

        child: SingleChildScrollView(

          padding:
              const EdgeInsets.all(25),


          child: Column(

            children: [



              const Icon(

                Icons.face_retouching_natural,

                size:80,

                color:Color(0xff2563EB),

              ),



              const SizedBox(height:20),



              const Text(

                "TrueAttend",

                style: TextStyle(

                  fontSize:32,

                  fontWeight:
                      FontWeight.bold,

                ),

              ),



              const SizedBox(height:30),




              TextField(

                controller:
                    emailController,

                decoration:
                    const InputDecoration(

                      labelText:"Email",

                      border:
                      OutlineInputBorder(),

                    ),

              ),



              const SizedBox(height:15),



              TextField(

                controller:
                    passwordController,

                obscureText:true,

                decoration:
                    const InputDecoration(

                      labelText:"Password",

                      border:
                      OutlineInputBorder(),

                    ),

              ),




              const SizedBox(height:20),




              DropdownButtonFormField(

                value: role,

                decoration:
                    const InputDecoration(

                      labelText:"Login As",

                      border:
                      OutlineInputBorder(),

                    ),


                items: const [

                  DropdownMenuItem(

                    value:"student",

                    child:
                    Text("Student"),

                  ),


                  DropdownMenuItem(

                    value:"teacher",

                    child:
                    Text("Teacher"),

                  ),

                ],


                onChanged:(value){

                  setState(() {

                    role =
                    value.toString();

                  });

                },

              ),



              const SizedBox(height:25),




              SizedBox(

                width:double.infinity,


                height:55,


                child: ElevatedButton(

                  onPressed:login,


                  child:
                  const Text(

                    "Login",

                    style:
                    TextStyle(

                      fontSize:18,

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
}