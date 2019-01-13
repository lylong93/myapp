import 'package:flutter/material.dart';

class MeMain extends StatefulWidget {
  const MeMain({ Key key }) : super(key: key);
  @override
  _MeMainState createState() => _MeMainState();
}

class _MeMainState extends State<MeMain> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'MID'),
    Tab(text: 'RIGHT'),
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
          TabBar(
            labelColor:Colors.red,
            controller: _tabController,
            tabs: myTabs,
          ),
          Expanded(
             child: TabBarView(
              controller: _tabController,
              children: myTabs.map((Tab tab) {
                return Center(child: Text(tab.text));
              }).toList(),
           ),
          ),
        ],
      );
  }
}