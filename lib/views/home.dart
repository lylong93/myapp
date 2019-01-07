import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key key }) : super(key: key);
  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
    Tab(text: 'other'),
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
        leading:IconButton(
            icon: Icon(Icons.playlist_play),
            tooltip: 'Air it',
            onPressed: () {},
        ),
        title: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ), 
         bottom:PreferredSize(
          child:(Text('text')),
          preferredSize:Size(80.0,50.0)
        )
      ),
      // body: TabBarView(
      //   controller: _tabController,
      //   children: myTabs.map((Tab tab) {
      //     return Center(child: Text(tab.text));
      //   }).toList(),
      // ),
    );
  }
}