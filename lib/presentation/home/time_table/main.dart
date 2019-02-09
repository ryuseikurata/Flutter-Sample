import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';
import 'package:penmark/presentation/home/mypage/main.dart';
import 'package:penmark/presentation/home/time_table/cell.dart';

class TimeTable extends StatelessWidget{

  const TimeTable({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.person_outline),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute<MyPage>(builder: (context) => MyPage()));
          }
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute<Cell>(builder: (context) => Cell()));
            })
        ],
        title: new Theme(
          child: new DropdownButtonHideUnderline(
            child: new DropdownButton<String>(
              value: "one",
              items: <DropdownMenuItem<String>>[
                new DropdownMenuItem(
                  child: new Text(''
                    'My Page',
                    style: TextStyle(color: Colors.black26),),
                  value: 'one',
                ),
              ],
              onChanged: (String value) {
              },
            ),
          ),
          data: ThemeData(
            primaryColor: Theme.of(context).primaryColor
          ),
        ),
      ),
    body: Table(
      border: TableBorder.all(color: Colors.grey),
      children: [
          TableRow(children: [
            Text(""),
            Text("月"),
            Text("火"),
          ]),
          TableRow(children: [
            Text("1"),
            Card(),
            Card(),
          ]),
          TableRow(children: [
            Text("2"),
            Text(""),
            Text(""),
          ]),
        ],
      )
    );
  }
}
