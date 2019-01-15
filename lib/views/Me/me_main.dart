import 'package:flutter/material.dart';

import './Left/index.dart';
import './Mid/index.dart';
import './Right/index.dart';

class MeMain extends StatefulWidget {
  const MeMain({ Key key }) : super(key: key);
  @override
  _MeMainState createState() => _MeMainState();
}

class _MeMainState extends State<MeMain> with SingleTickerProviderStateMixin {
  // 标签栏
  final List<Tab> tabs = <Tab>[
    Tab(text: '笔记'),
    Tab(text: '收藏'),
    Tab(text: '赞过'),
  ];
  // 标签视图
  final List<Widget> tabViews = [
    LeftTab(),
    MidTab(),
    RightTab(),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

 @override
 void dispose() {
    super.dispose();
   _tabController.dispose();
 }

  @override
  Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left:70.0,right:70.0),
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
              tabs: tabs,
           ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children:tabViews,
            ),
          ),
        ],
      );
  }
}