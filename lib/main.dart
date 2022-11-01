import 'package:flutter/material.dart';
import 'package:noteapp/Auth/login.dart';
import 'package:noteapp/Auth/signup.dart';
import 'package:noteapp/Home/homepage.dart';
import 'package:noteapp/create/addnotes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {"Login":(context) => Login(),
               "Signup":(context) => Singup(),  
               "homepage":(context) => HomePage(),
               "addnote":(context) => AddNotes(),
      },

      theme: ThemeData(
        primaryColor: Colors.blue,
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.blue)
       
        
      ),
    );
      }
}