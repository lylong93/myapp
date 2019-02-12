import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({Key key, this.count, this.name}) : super(key: key);

  final count;
  final name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: GestureDetector(
            child: Column(
              children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height-100.0,
                      child: ListView(
                        children: <Widget>[
                          Hero(
                            tag: 'om$count',
                            child:Image.network(
                              'https://img5.duitang.com/uploads/item/201411/07/20141107164412_v284V.jpeg',
                            ),
                          ),
                          Container(
                            height: 100.0,
                            margin: EdgeInsets.all(10.0),
                            decoration:BoxDecoration(
                              boxShadow: [
                                BoxShadow(color: Colors.black26, offset: Offset(0.0, 0.0), blurRadius: 10.0, spreadRadius: 2.0),
                                // BoxShadow(color: Colors.red, offset: Offset(5.0, 5.0), blurRadius: 10.0, spreadRadius: 2.0),
                                BoxShadow(color: Colors.white)],
                            ),
                            child: Text('data'),
                          ),
                          Container(
                              color:Color.fromRGBO(65,105, 205, 0.7),
                              height: 50.0,
                          ),
                          Container(
                               color:Color.fromRGBO(255,97, 3, 0.7),
                              height: 50.0,
                          ),
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Text('okokokokokokokokokokokokokok')
                          ),
                        ],
                      ),
                    )
                    
              ]
            ),
            onTap: () {
              Navigator.pop(context);
            }
          )
    );
    }
}