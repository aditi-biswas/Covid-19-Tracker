import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class CountryData extends StatefulWidget
{
  @override
  State<CountryData> createState() => _CountryDataState();
}

class _CountryDataState extends State<CountryData> {
  late List cdata;

  fetchCountryStat() async
  {
    http.Response res = await http.get(Uri.parse('https://corona.lmao.ninja/v2/countries'));
    setState((){
      cdata= json.decode(res.body);
    });
  }

  @override
  void initState() {
    super.initState();
    fetchCountryStat();
  }

  Widget build(BuildContext context)
  {
     return Scaffold(
       appBar: AppBar(title:Text('COUNTRY STATS', style:TextStyle(fontWeight: FontWeight.bold))),
       body:Container(
         color:Colors.red[100],
         child:cdata==null?LinearProgressIndicator(backgroundColor: Colors.grey):ListView.builder(
         shrinkWrap: true,
         itemCount: cdata.length,
         itemBuilder: (context,index)
         {
           return Padding(
             padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:4.0),
             child: Card(
               elevation: 10,
               shadowColor: Colors.brown[900],
               child: Column(
                 children: [
                   Row(
                     children:[
                   Container(
                      child: Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text(cdata[index]['country'].toString(),style: TextStyle(fontWeight: FontWeight.w900),),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Image.network(cdata[index]['countryInfo']['flag'],height:40,width: 60,),
                             )
                           ],
                       ),
                      ),
                       Expanded(
                           child:Center(
                             child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text('CONFIRMED: '+cdata[index]['cases'].toString(),style: TextStyle(fontWeight: FontWeight.w600,color: Colors.red)),
                                   Text('ACTIVE: '+cdata[index]['active'].toString(),style: TextStyle(fontWeight: FontWeight.w600,color:Colors.blue)),
                                   Text('RECOVERED: '+cdata[index]['recovered'].toString(),style: TextStyle(fontWeight: FontWeight.w600,color:Colors.green)),
                                   Text('DEATHS: '+cdata[index]['deaths'].toString(),style: TextStyle(fontWeight: FontWeight.w600,color:Colors.black))
                                 ],
                               ),
                           ),
                         ),
                       
                     ],
                   ),
                   Text('Click on the country to set it as default')
                 ],
               )
             ),
           );
         }
        )
       ) 
    );  
  }
}