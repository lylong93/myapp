import 'package:flutter/material.dart';
// import 'package:meta/meta.dart';
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
          child:(SerachBar()),
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

class SerachBar extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 350.00,
      height: 40.00,
      decoration:BoxDecoration(
         color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(4.0)),
      child:  Row(
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
    );
  }
}