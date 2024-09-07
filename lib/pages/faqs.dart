import 'package:flutter/material.dart';

class Faqs extends StatelessWidget
{
  late List quesans;
  Faqs({required this.quesans});
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title:Text('FAQs', style:TextStyle(fontWeight: FontWeight.bold))),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: quesans.length,
        itemBuilder: (context, index)
        {
          return ExpansionTile(
            title: Text(quesans[index]['question'],style:TextStyle(fontWeight: FontWeight.w600)),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:12.0),
                child: Text(quesans[index]['answer'],style:TextStyle(fontWeight: FontWeight.w500)),
              ),
            ],
          );
        }
      )
    );
  }
}