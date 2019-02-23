import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import './shopTop.dart';
import './ShopMain.dart';

import 'dart:math' as Math;

// 画布
class Sky extends CustomPainter {
  Sky({this.of, this.dx, this.rd, this.tt, this.co, this.tx});
  var of;
  var dx;
  var rd;

  var tt;
  var tx;
  Color co;

  @override
  void paint(Canvas canvas, Size size) {
    var rect = Rect.fromLTRB(0.0, 0.0, 375.0, 700.0);
    var rectline = Rect.zero;

    var gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomLeft,
      colors: [co, Colors.white],
      stops: [rd, 1],
    );

    var gradientline = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomLeft,
      colors: [Colors.red, Colors.black],
    );

    Paint paint = new Paint()
      ..strokeWidth = 1
      ..style = PaintingStyle.fill
      ..shader = gradient.createShader(rect);

    Paint linepaint = new Paint()
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..color = Colors.yellow
      ..shader = gradientline.createShader(rectline);

    var path1 = Path();

    path1.reset();
    path1.moveTo(0.0, 200.0);
    path1.cubicTo(100.0, 100.0, 250.0, 350.0, 375.0, 200.0);

    // var path2 = Path();

    // path1.reset();
    // path1.moveTo(0.0, 100.0);
    // path1.cubicTo(0.0, 100.0, 200.0, 300.0, 375.0, 100.0);

    // var path3 = Path();

    // path1.reset();
    // path1.moveTo(0.0, 100.0);
    // path1.cubicTo(0.0, 100.0, 200.0, 300.0, 375.0, 100.0);

    var path = Path();

    path.reset();
    path.moveTo(0.0, 700.0);
    path.lineTo(0.0, tt);
    path.cubicTo(0.0, tt, 100.0, tx, 375.0, tt);
    path.lineTo(375.0, 700.0);
    path.close();

    canvas.clipPath(
      path,
      doAntiAlias: true,
    );

    canvas.drawRect(rect, paint);

    // canvas.drawPath(path1, linepaint);
    // canvas.drawPath(path2, linepaint);
    // canvas.drawPath(path3, linepaint);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) {};
  }

  @override
  bool shouldRepaint(Sky oldDelegate) => true;
  @override
  bool shouldRebuildSemantics(Sky oldDelegate) => false;
}

// main
class ShopScreen extends StatefulWidget {
  const ShopScreen({Key key}) : super(key: key);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  // CurvedAnimation curved; //曲线动画，动画插值，
  Animation animation;

  ScrollController _controller = ScrollController();
  ScrollController _nestcontroller = ScrollController();
// AnimationController _nestcontroller = AnimationController();
  int n = 1;
  double of = Math.Random().nextDouble();

  double dx = 0.0;
  double rd = 0.1;

  double tt = 700.0;
  double tx = 700.0;
  Color co = Colors.green;

  // var user;
  var istop = true;

  Color topColor = Color.fromRGBO(0,87,55,0.7);

  double w1 = 100.0;
  double w2 = 60.0;
  double w3 = 60.0;
  double w4 = 60.0;

  int flag = 1;
  void init() {
    w1 = 60.0;
    w2 = 60.0;
    w3 = 60.0;
    w4 = 60.0;
  }

  @override
  void initState() {
    super.initState();

    _nestcontroller.addListener(() {
      // topColor = Color(0x00000000);
      var pix = _nestcontroller.position.pixels;

      if (pix == 244) {
        print('到顶部了');
        controller.reset();
        controller.forward();
        istop = true;
        topColor = Color.fromRGBO(0,87,55,1);
        co = Color.fromRGBO(0,87,55,0.7);
      }
      if (pix == 0) {
        print('到底部了');
        controller.reset();
        tt = 300.0;
        tx = 280.0;
        controller.forward();
        istop = false;
        topColor = Color.fromRGBO(0,87,55,0.7);
        // co = Colors.green;
      }
    });

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        if (!istop) {
          if (tt == 300.0) {
            // topColor = Colors.green;
          }
          if (tx >= 730.0) {
            return;
          }
          of++;
          rd = rd - 0.15;
          tt = tt + 10;
          tx = tx + 8;
          // print(tx);
        } else {
          if (tt == 0) {
            return;
          }
          of--;
          rd = rd + 0.15;
          tt = tt - 10;
          tx = tx - 7;
          // print(tx);
        }
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size);
    return Scaffold(
        body: Listener(
            onPointerDown: (event) {
              // user = event.position;
              // print(user.dx);
              // dx = user.dx;
              // 可监听到listview的触摸点
            },
            child: CustomPaint(
              painter: Sky(of: of, dx: dx, rd: rd, tt: tt, co: co, tx: tx),
              child: NestedScrollView(
                  controller: _nestcontroller,
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return [
                      SliverOverlapAbsorber(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),
                        child: SliverAppBar(
                            backgroundColor: Colors.transparent,
                            pinned: true,
                            expandedHeight: 300.0,
                            flexibleSpace: Container(
                                color: this.topColor,
                                height: 300.0,
                                child: Column(
                                  children: <Widget>[
                                    AppBar(
                                        title: Text("this is ok"),
                                        elevation: 0.0,
                                        backgroundColor: Colors.transparent),
                                    Expanded(
                                      child: ListView(
                                        physics:
                                            const AlwaysScrollableScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              init();
                                              setState(() {
                                                w1 = 100.0;
                                                flag = 1;
                                              });
                                            },
                                            child: Container(
                                              margin: EdgeInsets.all(10.0),
                                              width: w1,
                                              child: Image.network(
                                                  'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              init();
                                              setState(() {
                                                w2 = 100.0;
                                                flag = 2;
                                              });
                                            },
                                            child: Container(
                                              margin: EdgeInsets.all(10.0),
                                              width: w2,
                                              child: Image.network(
                                                  'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              init();
                                              setState(() {
                                                w3 = 100.0;
                                                 flag = 3;
                                              });
                                            },
                                            child: Container(
                                              margin: EdgeInsets.all(10.0),
                                              width: w3,
                                              child: Image.network(
                                                  'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              init();
                                              setState(() {
                                                w4 = 100.0;
                                                 flag = 4;
                                              });
                                            },
                                            child: Container(
                                              margin: EdgeInsets.all(10.0),
                                              width: w4,
                                              child: Image.network(
                                                  'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
                                            ),
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
                  body: Container(
                      margin: EdgeInsets.only(top: 50.0), child:
                        ShopMain(flag:flag)
                      )),
              // AnimatedBuilder(
              //   animation: animation,
              //   builder: (context, child) => Container(
              //       margin: EdgeInsets.only(top: 100.0),
              //       // color: animation.value,
              //       decoration: BoxDecoration(
              //           border: Border(
              //               top: BorderSide(
              //                 color: Colors.red,
              //               ),
              //               bottom: BorderSide(
              //                 color: Colors.red,
              //               ))),
              //       child:
              //       // Text(n.toString())
              //       CustomPaint(
              //         painter: Sky(
              //           of:of
              //         ),
              //       )

              //       ),
              // ),
              // Container(
              //   color: Colors.red,
              //   margin: EdgeInsets.only(top: 100.0),
              //   child: Text('o'),
              // ),
            ))

        // floatingActionButton:FloatingActionButton(
        //   onPressed: () {
        //     if(istop) {
        //       controller.reset();
        //       print('istop');
        //       istop = false;
        //       controller.forward();

        //     } else {
        //        controller.reset();
        //        print('向后播放动画');
        //       controller.forward();//向后播放动画

        //     }

        //   },
        //   child: new Icon(Icons.track_changes),
        // )
        );
  }
}
