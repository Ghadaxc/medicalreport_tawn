import 'package:flutter/material.dart';
import 'package:tawn_medicalreport/data.dart';

class MedicalReport extends StatefulWidget {
  const MedicalReport({Key? key}) : super(key: key);

  @override
  State<MedicalReport> createState() => _MedicalReportState();
}

class _MedicalReportState extends State<MedicalReport> {
  @override
  Widget build(BuildContext context) {
    bool value = false ; // user checkbox property
    TextEditingController name= new TextEditingController();
    TextEditingController region= new TextEditingController();
    TextEditingController city= new TextEditingController();
    TextEditingController phone= new TextEditingController();
    TextEditingController email= new TextEditingController();
    TextEditingController date= new TextEditingController();

    TextEditingController medicalprovider= new TextEditingController();
    TextEditingController responsible= new TextEditingController();
    TextEditingController details= new TextEditingController();



    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(   //appbar Container
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color:  Colors.white,
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(20)),
          boxShadow: [ BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 20,
            spreadRadius: 2,
            offset: const Offset( 2,2,
            ),),],
        ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column( //=padding
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Image.asset('assets/images/Close.png'),
                SizedBox(height: 20 , width: 10,),
                Text('Medical', style: Theme.of(context).textTheme.bodyText2),
                SizedBox(height: 10 , width: 10,),
                Text('Report Medical Fraud ', style: Theme.of(context).textTheme.headline1 ),
            ],),
          ),
        ), //Appbar

        SizedBox(height: 16,),


         Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                 Text('An intentional act by the cardholder, insured, and medical services provider to obtain not owed compensation or benefits to them or others through deceiving, concealing, and misrepresenting information',
                 style: Theme.of(context).textTheme.bodyText1),
                 SizedBox(height: 30,),

                  Text('Reporter Details',
                  style: Theme.of(context).textTheme.headline2 ),
                  SizedBox(height: 16,),



                 TextFormField(
                   controller: name,
                   validator: (value) {
                     if (value == null || value.isEmpty) {
                       return 'Please enter some text';
                     }
                     return null;
                   },
                   decoration: InputDecoration(
                   filled: true,
                   fillColor: Colors.white,
                   hintText: 'Report Name',
                   hintStyle: TextStyle( fontFamily: 'lato', fontWeight: FontWeight.w400 , fontSize: 14),
                   prefixIcon: Image.asset("assets/images/Person.png"),
                    enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                         color: Colors.white,
                       ),
                   ),
                   ),
                 ),
               SizedBox(height: 16,),

               Row(children: [
                 Expanded(
                   child: TextFormField(
                     controller: region,
                     validator: (value) {
                       if (value == null || value.isEmpty) {
                         return 'Please enter some text';
                       }
                       return null;
                     },
                     decoration: InputDecoration(
                       filled: true,
                       fillColor: Colors.white,
                       hintText: 'Region',
                       hintStyle: TextStyle( fontFamily: 'lato', fontWeight: FontWeight.w400 , fontSize: 14),
                       suffixIcon: Image.asset('assets/images/down_arrow.png'),
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                           color: Colors.white,
                         ),
                       ),),
                   ),
                 ),
                 SizedBox(width: 16,),
                 Expanded(
                   child: TextFormField(
                   controller: city,
                     validator: (value) {
                       if (value == null || value.isEmpty) {
                         return 'Please enter some text';
                       }
                       return null;
                     },
                   decoration: InputDecoration(
                     filled: true,
                     fillColor: Colors.white,
                     hintText: 'City',
                     hintStyle: TextStyle( fontFamily: 'lato', fontWeight: FontWeight.w400 , fontSize: 14),
                     suffixIcon: Image.asset('assets/images/down_arrow.png'),
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                         color: Colors.white,
                       ),
                     ),),
                 ),
                 ),
               ]),


               SizedBox(height: 16,),

               TextFormField(
                 controller: phone,
                 validator: (value) {
                   if (value == null || value.isEmpty) {
                     return 'Please enter some text';
                   }
                   return null;
                 },
                 keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                   filled: true,
                   fillColor: Colors.white,
                   hintText: '   ex: 5xxxxxxx',
                   hintStyle: TextStyle( fontFamily: 'lato', fontWeight: FontWeight.w400 , fontSize: 14),
                   prefixIcon: Image.asset('assets/images/Country_Code.png'),
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.white,
                     ),
                   ),),
               ),

               SizedBox(height: 20,),


               TextFormField(
                controller: email,
                 validator: (value) {
                   if (value == null || value.isEmpty) {
                     return 'Please enter some text';
                   }
                   return null;
                 },
                 keyboardType: TextInputType.emailAddress,
                 decoration: InputDecoration(
                   filled: true,
                   fillColor: Colors.white,
                   hintText: 'ex: email@tawuniya.com.sa',
                   hintStyle: TextStyle( fontFamily: 'lato', fontWeight: FontWeight.w400 , fontSize: 14),
                   prefixIcon: Image.asset('assets/images/email.png'),
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.white,
                     ),
                   ),),
               ),

         ]),
         ),
        Divider(),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Incident Details',
              style: Theme.of(context).textTheme.headline2,),

            SizedBox(height: 16,),

            TextFormField(
              controller: date,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Fraud Incident Date',
                hintStyle: TextStyle( fontFamily: 'lato', fontWeight: FontWeight.w400 , fontSize: 14),
                prefixIcon: Image.asset('assets/images/Date.png'),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),),
            ),
              SizedBox(height: 16,),


              TextFormField(
                controller: medicalprovider,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Medical Provider Name',
                  hintStyle: TextStyle( fontFamily: 'lato', fontWeight: FontWeight.w400 , fontSize: 14),
                  prefixIcon: Image.asset('assets/images/Medical_Provider.png'),
                  suffixIcon: Image.asset('assets/images/down_arrow.png'),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),),
              ),

              SizedBox(height: 16,),


              TextFormField(
               controller: responsible,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Fraud Incident Responsible Name',
                  hintStyle: TextStyle( fontFamily: 'lato', fontWeight: FontWeight.w400 , fontSize: 14),
                  prefixIcon: Image.asset('assets/images/Person.png'),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 16,),
              Divider(),

              Text('Fraud Incident Details',
                style: Theme.of(context).textTheme.headline2),
               SizedBox(height: 20,),

               TextFormField(
                 controller: details,
                 maxLines: 5,
                 validator: (value) {
                   if (value == null || value.isEmpty) {
                     return 'Please enter some text';
                   }
                   return null;
                 },
                 decoration: InputDecoration(
                   filled: true,
                   fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 20),
                  hintText: "  Type here..",
                   hintStyle: TextStyle( ),
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.white,
                     ),
                   ),
                ),
               ),

              SizedBox(height: 20,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                    Image.asset('assets/images/Vector.png'),
                    SizedBox(width: 10,),
                    Text('Be detailed as possible when submitting a request in order' ),
                  ],),
                  Text('       for us to help you more effectively The more detailed.' ),
                  Text('       the information you provide, the faster '),
                  Text('        we will be able to Resolve your issue .'),
                  SizedBox(height: 5,),
                  Text('        Below are some tips :'),
                  Text('            . Explain step-by-step how to reproduce the scenario or ' ),
                  Text('              the problem that you are describing.'),
                  Text('            .If you think a document would help, please include one.'),
                  Text('            .State when the problem started and what changes were '),
                  Text('               made immediately before hand.'),
                   SizedBox(height: 30,)
                  ,],),
             Divider(),
              SizedBox(height: 16,),
              Text('Supporting Documents', style: TextStyle( color: Color.fromRGBO(69, 85, 96, 1), fontWeight: FontWeight.w400, fontSize: 16)),
              SizedBox(height: 16,),

                MaterialButton(
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 0),
                  onPressed: (){
                  },
                  child: Text('Upload', style: TextStyle(
                      color: Colors.white,
                      fontSize: 16),),
                  color: Color.fromRGBO(139, 178, 201, 1),
                  textColor: Colors.white,
                ),

              SizedBox(height: 16,),
              Row( children: [
                Image.asset('assets/images/Vector.png'),
                SizedBox(width: 5,),
                Text('Allowed files: JPEG, PNG, DOC,DOCX, PDF Maximunm  ', style: Theme.of(context).textTheme.bodyText2,),
              ],),
              Text('       Size: 10MB' , style: Theme.of(context).textTheme.bodyText2,),
              Divider(),
              Row( children: [
                Checkbox(
                    value: value,
                    onChanged: null),
                Text('I hereby declare that all the above information is true ', style:Theme.of(context).textTheme.bodyText2),
              ],),

              Divider(),

              MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 0),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> UserData(
                          name: name.text ,
                          region: region.text,
                          city: city.text,
                          phone: phone.text,
                          email: email.text,
                          date: date.text,
                          medicalprovider: medicalprovider.text,
                          responsible: responsible.text,
                          details: details.text,
                      )));
                },
                child: Text('Submit Report',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16),),
                    color: Color.fromRGBO(244, 123, 32, 1),
                   textColor: Colors.white,
              ),
              SizedBox(height: 16,),
              Text('Tawuniya undertakes to maintain the confidentiality of the information of the person who is reporting the fraud in the medical insurance. ',
               style: Theme.of(context).textTheme.bodyText2),

            ]),
        ),
            ],),
        ),

    );


  }
}


