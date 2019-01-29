import 'package:flutter/material.dart';
import 'package:myapp/views/Search/index.dart';

import 'package:myapp/views/Home/Left/index.dart';
import 'package:myapp/views/Home/Right/index.dart';

import 'package:myapp/api/Home/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key, this.callback}) : super(key: key);
  final callback;

  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
    // Tab(text: 'other'),
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
    return Scaffold(
      appBar: AppBar(
          title: TabBar(
            controller: _tabController,
            tabs: myTabs,
          ),
          bottom: PreferredSize(
              child: (SerachBar()),
              // child: (MaterialSearch(),
              preferredSize: Size(80.0, 50.0))),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[HomeLeft(), Find()],
      ),
    );
  }
}

class SerachBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 40.00,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(4.0)),
      child: GestureDetector(
        onTap: () {
          print('object');
          // HomeApi.getTest();
          showSearch(context: context, delegate: Search());
        },
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10.0, top: 3.0, left: 10.0),
              child: Icon(Icons.search,
                  size: 24.0, color: Theme.of(context).accentColor),
            ),
            //     // new Expanded(
            //       // child: new MaterialSearchInput(
            //       //   placeholder: '搜索 flutter 组件',
            //       //   // getResults: getResults,
            //       // ),
            //     // ),
          ],
        ),
      ),
    );
  }
}
