
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  final titleList = ['NEWS','LABS'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(
        // elevation: 0.0,
         appBar: TabBar(
           
              isScrollable: false,//是否可滑动
              unselectedLabelColor: Colors.black26,//未选中按钮颜色
              labelColor: Colors.red,//选中按钮颜色
              labelStyle: TextStyle(fontSize: 18),//文字样式
              indicatorSize: TabBarIndicatorSize.label,//滑动的宽度是根据内容来适应,还是与整块那么大(label表示根据内容来适应)
                indicatorWeight: 4.0,//滑块高度
                indicatorColor: Colors.yellow,//滑动颜色
              indicatorPadding: EdgeInsets.only(bottom: 1),//与底部距离为1
              tabs: titleList.map((String text) {//tabs表示具体的内容,是一个数组
                return new Tab(
                  text: text,
                );
              }).toList(),
            ),

        // bottom:PreferredSize(
        //   child:(new Search()),
        //   preferredSize:Size(10.0,10.0)
        // )
      // )
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return(Text('好'));
  }
}