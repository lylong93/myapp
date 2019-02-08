import 'package:flutter/material.dart';
import './recomm.dart';
import './leftcard.dart';

import 'package:myapp/models/home.dart';

import 'package:myapp/api/Home/index.dart';

class HomeLeft extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeLeftState();
}

class _HomeLeftState extends State<HomeLeft> {
  List childList = [];
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    getdata();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        getdata();
        print('滑动到了最底部');
      }
    });
  }

  getdata() async {
    var jsonString = await HomeApi.getTest();
    var data = jsonString['list'];
    data.forEach((item) {
      var _item = new HomeItem.fromJson(item);
      childList..add(_item);
    });
    setState(() {
    });
  }

  Future _loadRefresh() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        getdata();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Color.fromRGBO(1, 1, 1, .1),
      child: ListView.builder(
          itemCount: childList.length,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            var _index = childList[index];
            return LeftCard(name:_index.name,bgimg:_index.bgimg,text:_index.text,num:_index.num);
          },
          controller: _scrollController),
      onRefresh: _loadRefresh,
    );
  }
}
