import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key key}) : super(key: key);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curved; //曲线动画，动画插值，
  Animation animation;

  ScrollController _controller = ScrollController();
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      print('ooo');
    });
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    animation = Tween(begin: 0.0, end: 100.0).animate(controller)
      ..addListener(() {
        // print('object');
      });
    // controller.forward();
    // curved = new CurvedAnimation(
    //     parent: controller, curve: Curves.linear); //模仿小球自由落体运动轨迹
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            child: SliverAppBar(
                pinned: true,

                expandedHeight: 300.0,
                flexibleSpace: Container(
                    color: Colors.blue,
                    height: 300.0,
                    child: Column(
                      children: <Widget>[
                        AppBar(
                          title: Text("this is ok"),
                          elevation:0.0
                        ),
                        Expanded(
                          child: ListView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                // color: Colors.yellow,
                                width: 80.0,
                                child: Image.network(
                                    'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.all(10.0),
                                width: 80.0,
                                child: Image.network(
                                    'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
                              ),
                              Container(
                                // color: Colors.yellow,
                                width: 130.0,
                                child: Image.network(
                                    'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
                              ),
                               Container(
                                // color: Colors.yellow,
                                 margin: EdgeInsets.all(10.0),
                                width: 80.0,
                                child: Image.network(
                                    'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
                              ),
                               Container(
                                // color: Colors.yellow,
                                width: 80.0,
                                child: Image.network(
                                    'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
                              ),
                            ],
                            controller: _controller,
                          ),
                        )
                      ],
                    ))),
          )
        ];
      },
      body: 


      AnimatedBuilder(
          animation: animation,
          builder: (context, child) => Container(
                margin: EdgeInsets.only(top:100.0),
                child: Text('abc'),
              ),
        ),
    )

        );
  }
}
