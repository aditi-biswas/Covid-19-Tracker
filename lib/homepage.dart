import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter_application_20/datasource.dart';
import 'package:flutter_application_20/panels/worldwidepanel.dart';
import 'package:flutter_application_20/routes.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_20/panels/mostaffectedcountries.dart';
import 'package:flutter_application_20/panels/infopanel.dart';

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  late List countryCoronaData;
  late Map coronaData;

  findworldData() async {
    http.Response response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/all'));
    setState(() {
      coronaData = json.decode(response.body);
    });
  }

  findcountryData() async {
    http.Response r =
        await http.get(Uri.parse('https://corona.lmao.ninja/v2/countries'));
    setState(() {
      countryCoronaData = json.decode(r.body);
    });
  }

  @override
  void initState() {
    super.initState();
    findworldData();
    findcountryData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: false,
        title: Text('COVID-19 TRACKER APP',style:TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            height: 100,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(DataSource.quote,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.orange[700])),
            color: Colors.orange[100],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Worldwide',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, MyRoutes.countryRoute);
                  });
                },
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 5,
                            color: Colors.black,
                            blurRadius: 30,
                          )
                        ]),
                    child: Center(
                      child: Text('Regional',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    )),
              )
            ],
          ),
          SizedBox(height: 15),
          coronaData == null
              ? CircularProgressIndicator(backgroundColor: Colors.grey,strokeWidth: 5,)
              : WorldwidePanel(worldData: coronaData),
          SizedBox(height: 15),
          Text('Most Affected Countries',style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 15),
          countryCoronaData == null
              ? Container()
              : MostAffectedCountries(countryData: countryCoronaData),
          SizedBox(height: 8),
          InfoPanel(),
          Text('WE STAND TOGETHER TO FIGHT WITH THIS',style:TextStyle(fontWeight:FontWeight.w600)),
          SizedBox(height: 20)
        ]),
      ),
    );
  }
}
