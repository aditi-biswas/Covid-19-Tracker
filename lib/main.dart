import 'package:flutter/material.dart';
import 'package:flutter_application_20/datasource.dart';

import 'package:flutter_application_20/homepage.dart';
import 'package:flutter_application_20/datasource.dart';
import 'package:flutter_application_20/routes.dart';
import 'package:flutter_application_20/pages/countrydata.dart';
import 'package:flutter_application_20/pages/faqs.dart';

void main()
{
  runApp (MyApp());
}

class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: primaryBlack,centerTitle: false),
        fontFamily: 'Gilroy',
      ),
      home:HomePage(),
      routes: {
        MyRoutes.countryRoute: (context) => CountryData(),
        MyRoutes.faqRoute: (context) => Faqs(quesans: DataSource.qna)
      }
    );
  }
}