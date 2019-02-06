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
  List<Widget> childList = [];
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    getdata();
    super.initState();
    _scrollController.addListener(() {
       getdata();
    });
  }

  getdata() async {
    var jsonString = await HomeApi.getTest();
    var data = jsonString['list'];
    List<Widget> _end = [];
    // childList.clear();
    data.forEach((item) {
      var user = new HomeItem.fromJson(item);
      _end..add(LeftCard(name: 'name'));
    });

    setState(() {
      childList = _end;
    });
  }

  Future _loadRefresh() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        childList.clear();
        getdata();
        return null;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Color.fromRGBO(1, 1, 1, .1),
      child: ListView(
        children: childList,
        controller:_scrollController
      ),
      onRefresh: _loadRefresh,
    );
  }
}
