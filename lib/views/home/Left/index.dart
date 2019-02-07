import 'package:flutter/material.dart';
import './recomm.dart';
import 'dart:convert';
import './leftcard.dart';

import 'package:myapp/models/home.dart';

import 'package:myapp/api/Home/index.dart';

class HomeLeft extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeLeftState();
}

class _HomeLeftState extends State<HomeLeft> {
  List<Widget> childList = [LeftCard(name: 'name')];
  String _size = '0';
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    // getdata();
    _scrollController.addListener(() {
       if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
         childList.add(LeftCard(name: 'name'));
          print('滑动到了最底部');

        setState(() {        
        // getdata();
        });
        //  getdata();
        // childList.clear();
      }
      
    });
  }

  getdata() async {
    var jsonString = await HomeApi.getTest();
    var data = jsonString['list'];
    List<Widget> _end = [];
    data.forEach((item) {
      var user = new HomeItem.fromJson(item);
      _end..add(LeftCard(name: 'name'));
    });
    setState(() {
      _size+= '0.1';
      // childList = childList.insert(1,Text('data'));
      childList.add(LeftCard(name: 'name'));
      print(childList);
    });
  }

  Future _loadRefresh() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {        
        getdata();
      });
    });
  }
_build () {
  return [this.childList.length];
}
  @override
  Widget build(BuildContext context) {
    print(childList);
    return RefreshIndicator(
      color: Color.fromRGBO(1, 1, 1, .1),
      child: ListView.builder(
        // itemCount: widgets.length,
        itemCount: childList.length,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index){
          return LeftCard(name:'po');
        },
        controller:_scrollController
      ),
      onRefresh: _loadRefresh,
    );
  }
}
