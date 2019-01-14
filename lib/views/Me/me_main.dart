import 'package:flutter/material.dart';

import './Left/index.dart';
class MeMain extends StatefulWidget {
  const MeMain({ Key key }) : super(key: key);
  @override
  _MeMainState createState() => _MeMainState();
}

class _MeMainState extends State<MeMain> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: '笔记'),
    Tab(text: '收藏'),
    Tab(text: '赞过'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

 @override
 void dispose() {
   _tabController.dispose();
   super.dispose();
 }

  @override
  Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left:70.0,right:70.0),
            // color: Colors.yellow,
            child: TabBar(
              indicatorPadding:EdgeInsets.all(6.0),
              indicatorSize:TabBarIndicatorSize.label,
              // indicator:UnderlineTabIndicator(
              //   borderSide:const BorderSide(width: 2.0, color: Colors.red), 
              //   insets: EdgeInsets.all(6.0),
              // ),
              labelColor:Colors.black,
              indicatorColor:Colors.red,
              unselectedLabelColor: Colors.black26,
              controller: _tabController,
              tabs: myTabs,
           ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children:[
                Left(),
              ],
            ),
          ),
        ],
      );
  }
}