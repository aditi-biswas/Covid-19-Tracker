import 'package:flutter/material.dart';

class WorldwidePanel extends StatelessWidget {

  final Map worldData;
  const WorldwidePanel({required this.worldData});

  Widget build(BuildContext context) {
    return GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 2),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              StatusPanel(
                panelColor:Colors.pink.shade100,
                textColor:Colors.pink,
                title:'CONFIRMED',
                count: worldData['cases'].toString(),
              ),
              StatusPanel(
                panelColor:Colors.blue.shade100,
                textColor:Colors.blue.shade900,
                title:'ACTIVE',
                count: worldData['active'].toString(),
              ),
              StatusPanel(
                panelColor:Colors.greenAccent.shade100,
                textColor:Colors.greenAccent.shade700,
                title:'RECOVERED',
                count: worldData['recovered'].toString(),
              ),
              StatusPanel(
                panelColor:Colors.grey.shade600,
                textColor:Colors.black,
                title:'DEATHS',
                count: worldData['deaths'].toString(),
              ),
            ]
    );
  }
}
    
class StatusPanel extends StatelessWidget {
  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  StatusPanel({required this.panelColor, required this.textColor, required this.title, required this.count});

  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(4),
      width: MediaQuery.of(context).size.width / 2,
      color: panelColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: textColor)),
          Text(count,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 10, color: textColor))
        ],
      ),
    );
  }
}
