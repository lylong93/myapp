import 'package:flutter/material.dart';


class Guan extends StatelessWidget {

  final List<Widget> list = <Widget>[
    Container(
      // padding: const EdgeInsets.all(10.00),
      margin: EdgeInsets.only(bottom:5.0),
      decoration:BoxDecoration(
        color: Colors.red,
      ),
      child:
      Column(
        children: <Widget>[
          Flex(
            crossAxisAlignment:CrossAxisAlignment.start,
            direction:Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children:[
                   CircleAvatar(),
                   Column(
                    children:[
                      Text('name'),
                      Text('time')
                    ]
                   )
                ]
              ),
              Text('ok')
            ],
          ),
          Image.network('http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg',

          ),
          Text('okkekjkokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkekjkeokkekjkokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkekjke',
            softWrap: false,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
          // Text('okkekjkkjke',softWrap: true,),
        ],
      )
    ),
     Container(
      padding: const EdgeInsets.only(bottom: 10.0, top: 5.0),
      margin: const EdgeInsets.only(bottom:5.0),
      decoration:BoxDecoration(
        color: Color.fromRGBO(144, 144, 144, 1),
      ),
      child:Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5.0),
             decoration:BoxDecoration(
             color: Colors.yellow,
            ),
            child:Flex(
            crossAxisAlignment:CrossAxisAlignment.start,
            direction:Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children:[
                   CircleAvatar(),
                   Column(
                    children:[
                      Text('name'),
                      Text('time')
                    ]
                   )
                ]
              ),
              Text('ok')
            ],
          ),
             ),
          
          Text('ok'),
        ],
      )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(1, 1, 1, .1),
      child:  ListView(
      children: list
    ),);
   
  }
}
