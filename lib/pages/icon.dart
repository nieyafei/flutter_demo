import 'package:flutter/material.dart';

class IconCo{
  final int name;
  final String title;
  IconCo(this.name,this.title);
}

class IconPage extends StatefulWidget{
  IconPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _IconPageState createState() => _IconPageState();
}

class _IconPageState extends State<IconPage>{

  List<IconCo> _items = <IconCo>[
    IconCo(0xeb3b, 'ac_unit'),
    IconCo(0xe190,'access_alarm'),
    IconCo(0xe191,'access_alarms'),
    IconCo(0xe192,'access_time'),
    IconCo(0xe84e,'accessibility'),
    IconCo(0xe92c,'accessibility_new'),
    IconCo(0xe914,'accessible'),
    IconCo(0xe934,'accessible_forward'),
    IconCo(0xe84f,'account_balance'),
    IconCo(0xe850,'account_balance_wallet'),
    IconCo(0xe851,'account_box'),
    IconCo(0xe853,'account_circle'),
  ];
  void initState() {
    super.initState();
    
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
        child: new GridView.count(
          crossAxisCount: 3,
          children: new List.generate(_items.length, (index){
            return new Container(
              color: Colors.blueAccent,
              child: new Center(
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(IconData(_items[index].name, fontFamily: 'MaterialIcons'), color: Colors.white, size: 36.0,),
                          Text('${_items[index].title}', style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),)
                        ],
                      )
                ),
            );
          }),
        )/* new Table(
          border: new TableBorder.all(width: 1.0,color: Colors.black12),
          children: <TableRow>[
            new TableRow(
              children: <Widget>[
                new TableCell(
                  child: new Center(
                    child: new Container(
                      height: 80.0,
                      child: new Column(
                        children: <Widget>[
                          Icon(Icons.accessibility),
                          Text('accessibility')
                        ],
                      ),
                    )
                  ),
                ),
                new TableCell(
                  child: new Center(
                    child: new Text('设置2'),
                  ),
                ),
                new TableCell(
                  child: new Center(
                    child: new Text('设置3'),
                  ),
                )
              ]
            )
          ],
        ), */
      )
    );
  }
}