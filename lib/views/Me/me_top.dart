import 'package:flutter/material.dart';

import 'package:myapp/views/Me/Class/index.dart';

class MeTop extends StatelessWidget {
  Widget _buildNumBar() {
    List numItems = [
      ListItem(title: '1', subtitle: '关注'),
      ListItem(title: '3', subtitle: '粉丝'),
      ListItem(title: '3', subtitle: '收藏与获赞'),
    ];

    var _children = numItems
        .map((n) => Container(
              child: Column(
                children: <Widget>[
                  Text(
                    n.title,
                    style: TextStyle(fontSize: 13.0),
                  ),
                  Text(
                    n.subtitle,
                    style: TextStyle(fontSize: 13.0),
                  ),
                ],
              ),
            ))
        .toList();
    return (Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 30.0),
          child: CircleAvatar(
            radius: 43.0,
            backgroundColor: Color.fromRGBO(0,87,55,0.7)

          ),
        ),
        Expanded(
          child: Container(
            height: 80.0,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: _children,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          decoration: const BoxDecoration(
                            border: Border(
                              top:
                                  BorderSide(width: 1.0, color: Colors.black38),
                              bottom:
                                  BorderSide(width: 1.0, color: Colors.black38),
                              left:
                                  BorderSide(width: 1.0, color: Colors.black38),
                              right:
                                  BorderSide(width: 1.0, color: Colors.black38),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          padding: EdgeInsets.only(
                              top: 3.0, bottom: 3.0, left: 50.0, right: 50.0),
                          child: Text('个人资料'),
                        ),
                        Container(
                            height: 30.0,
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                    width: 1.0, color: Colors.black38),
                                bottom: BorderSide(
                                    width: 1.0, color: Colors.black38),
                                left: BorderSide(
                                    width: 1.0, color: Colors.black38),
                                right: BorderSide(
                                    width: 1.0, color: Colors.black38),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            padding: EdgeInsets.only(
                                top: 3.0, bottom: 3.0, left: 12.0, right: 12.0),
                            child: Icon(Icons.settings)),
                      ]),
                ]),
          ),
        ),
      ],
    ));
  }

  Iterable _buildSetBar() {
    List<Object> setItems = [
      ListItem(title: '1', subtitle: '2'),
      ListItem(title: '3', subtitle: '5'),
      ListItem(title: '3', subtitle: '6'),
    ];

    return setItems
        .map((n) => Container(
              padding: EdgeInsets.only(left: 6.0, right: 6.0),
              decoration: BoxDecoration(
                  border: Border(
                left: BorderSide(width: 1.0, color: Colors.lightBlue),
              )),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.group_work,
                    size: 14.0,
                  ),
                  Text(
                    ' 解锁等级 ',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  Icon(
                    Icons.navigate_next,
                    size: 14.0,
                  ),
                ],
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size * 50);
    return Container(
      padding:
          EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0, bottom: 15.0),
      height: 180.0,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1.0, color: Colors.black12),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildNumBar(),
          Row(
            children: _buildSetBar(),
          ),
          Text('添加个人描述，可以让大家更好的认识你')
        ],
      ),
    );
  }
}
