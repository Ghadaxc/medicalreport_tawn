import 'package:flutter/material.dart';
import 'package:tawn_medicalreport/view/medical_report.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "bliss 2",
        primaryColor: Color.fromRGBO(139, 178, 201, 1),
        backgroundColor: const Color.fromRGBO(242, 243, 245, 1),
        textTheme: const TextTheme(
          headline1: TextStyle( fontFamily: 'bliss 2',fontWeight: FontWeight.w800, fontSize: 20, color: Color.fromRGBO(69, 85, 96, 1), ),
          headline2: TextStyle( fontFamily: 'bliss 2',fontWeight: FontWeight.w800, fontSize: 16, color: Color.fromRGBO(69, 85, 96, 1),),
          bodyText1: TextStyle( fontFamily: 'bliss 2',fontWeight: FontWeight.w400, color: Color.fromRGBO(69, 85, 96, 1), fontSize: 16),
          bodyText2: TextStyle( fontFamily: 'bliss 2', fontSize: 12, fontWeight: FontWeight.w400 ,color: Color.fromRGBO(69, 85, 96, 1),),
        ),
      ),
      home: MedicalReport(),
    );
  }
}

