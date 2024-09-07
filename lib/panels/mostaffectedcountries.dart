import 'package:flutter/material.dart';

class MostAffectedCountries extends StatelessWidget
{
  final List countryData;
  MostAffectedCountries({required this.countryData}); 

  Widget build(BuildContext context)
  {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context,index){
        return Container(
          child:Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(countryData[index]['countryInfo']['flag'],height: 25,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(countryData[index]['country'],style:TextStyle(fontWeight:FontWeight.w600)),
              ),
              Text("Deaths "+countryData[index]['deaths'].toString(),style: TextStyle(color:Colors.red,fontWeight:FontWeight.w600),),
            ],
          ),
        );
      }
    );
  }
}