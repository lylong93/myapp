import 'package:flutter/material.dart';

class Cardd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Container(
          color:Colors.white,
          margin: EdgeInsets.all(1.0),
          child:Column(
            children: <Widget>[
              Image.network('http://pic1.win4000.com/wallpaper/e/526c9f99ce1e9.jpg',height: 140.0,),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text('okokokokokokokokokokokokokokokokokokokokokokokokokokokokokok',maxLines: 2,overflow:TextOverflow.ellipsis,textAlign:TextAlign.left),
              ),
              Container(
                padding: EdgeInsets.only(left:10.0,right: 10.0,bottom: 10.0),
                child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 13.0,
                        backgroundColor: Colors.brown.shade800,
                        backgroundImage:NetworkImage('http://pic1.win4000.com/wallpaper/e/526c9f99ce1e9.jpg'),
                      ),
                      Container(
                        width: 90.0,
                        margin:EdgeInsets.only(left:3.0) ,
                        child: Text('我的名字是什么呢',overflow:TextOverflow.ellipsis,textAlign:TextAlign.left),
                      )
                      ],
                     ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.favorite,color:Colors.red),
                       Container(
                        margin:EdgeInsets.only(left:3.0) ,
                        child: Text('12'),
                      )
                    ],
                   ),
                  ],
                ),
              ),
            ],
          ) ,
        );
    }
}