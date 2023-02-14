import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
String name , phone , email, region, city;
String  date, medicalprovider, responsible, details;

UserData({
  required this.name,
  required this.phone,
  required this.email,
  required this.region,
  required this.city,
  required this.date,
  required this.medicalprovider,
  required this.responsible,
  required this.details,
});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Name : ${name}'),
          Text('Phone : ${phone}'),
          Text('City : ${city}'),
          Text('Reqion : ${region}'),
          Text('Email : ${email}'),

          SizedBox(height: 30,),
          Text('Incident Date : ${date}'),
          Text('Medical provider : ${medicalprovider}'),
          Text('Responsible : ${responsible}'),
          Text('Details : ${details}'),







        ],),
      ),
    );
  }
}

// void _printLatestValue() {
//   print('Second text field: ${myController.text}');
// }
