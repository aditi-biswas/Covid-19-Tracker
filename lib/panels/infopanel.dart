import 'package:flutter/material.dart';
import 'package:flutter_application_20/datasource.dart';
import 'package:flutter_application_20/routes.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_application_20/pages/faqs.dart';

class InfoPanel extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Container(
      child:Column(
        children:[
          Padding(
            padding: EdgeInsets.symmetric(horizontal:8.0,vertical: 4.0),
            child:GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context,MyRoutes.faqRoute);
                    },
                    child: Container(
              height:35,
              color:primaryBlack,
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 8),
                  Text('FAQS', style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:8.0),
                    child: const Icon(Icons.arrow_forward,color:Colors.white),
                  )
                ],
              )
            ),
            ),
          ),
          GestureDetector(
            onTap: (){
              launch('https://www.who.int/emergencies/diseases/novel-coronavirus-2019/donate');
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal:8.0,vertical: 4.0),
              child: Container(
                height:35,
                color:primaryBlack,
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 8),
                    Row(
                      children:[
                        Text('DONATE', style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,)),
                        Text('(open WHO website)',style:TextStyle(color:Colors.white)),
                      ]
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      child: Icon(Icons.arrow_forward,color:Colors.white),
                    )
                  ],
                )
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              launch('https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters');
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal:8.0,vertical: 4.0),
              child: Container(
                height:35,
                color:primaryBlack,
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 8),
                    Row(
                      children: [
                        Text('MYTH BUSTERS',textAlign: TextAlign.start, style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                        Text('(rumours busted)',style:TextStyle(color:Colors.white)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      child: Icon(Icons.arrow_forward,color:Colors.white),
                    ),
                  ]
                )
              ),
            ),
          ),
          SizedBox(height: 15)
        ]
      )
    );
  }
}
              
         