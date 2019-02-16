import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import './shopTop.dart';
import './ShopMain.dart';

import 'dart:math' as Math;

// 画布
class Sky extends CustomPainter {
  Sky({this.of, this.dx, this.rd, this.tt,this.co});
  var of;
  var dx;
  var rd;

  var tt;
  Color co;

  @override
  void paint(Canvas canvas, Size size) {
    var rect = Rect.fromLTRB(0.0, 0.0, 375.0, 700.0);

    var gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomLeft,
      colors: [co, Colors.white],
      stops: [rd, 1],
    );

    Paint paint = new Paint()
      ..strokeWidth = 1
      ..style = PaintingStyle.fill
      ..shader = gradient.createShader(rect);

    // Paint linepaint = new Paint()
    //   ..strokeWidth = 10
    //   ..style = PaintingStyle.stroke
    //   ..color = Colors.yellow;
    // linepaint.shader = gradient.createShader(rect);

    var path1 = Path();

    path1.reset();
    path1.moveTo(0.0, 100.0);
    path1.cubicTo(0.0, 100.0, 200.0, 300.0, 375.0, 100.0);

    var path = Path();

    path.reset();
    path.moveTo(0.0, 700.0);
    path.lineTo(0.0, tt);
    path.cubicTo(0.0, tt, 100.0, tt, 375.0, tt);
    path.lineTo(375.0, 700.0);
    path.close();

    canvas.clipPath(
      path,
      doAntiAlias: true,
    );

    canvas.drawRect(rect, paint);
    
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

  double tt = 600.0;

  Color co = Colors.green;

  var user;
  var istop = true;

  Color topColor = Colors.green;

  @override
  void initState() {
    super.initState();

    _nestcontroller.addListener(() {
      // print(_nestcontroller.position);
      // controller.animateTo();
      topColor = Color(0x00000000);
      var pix = _nestcontroller.position.pixels;

      if (pix == 244) {
        print('到顶部了');
        controller.reset();
        controller.forward();
        istop = true;
       co = Colors.black;
        
        // topColor = Colors.transparent;
      }

      if (pix == 0) {
        print('到底部了');
        controller.reset();
        controller.forward();
        istop = false;
        co = Colors.green;
        // topColor = Colors.blue;
      }
    });

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        if (!istop) {
          if (tt == 300.0) {
            topColor = Colors.green;
          }
          if(tt == 700.0) {
            return;
          }
          of++;
          rd = rd - 0.02;
          tt = tt + 10;
          print(tt);
        } else {
          if(tt == 0) {
            return;
          }
          of--;
          rd = rd + 0.02;
          // rd = rd - 0.1;
          tt = tt - 10;

          print(tt);
          
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
              user = event.position;
              // print(user.dx);
              dx = user.dx;
            },
            child: CustomPaint(
              painter: Sky(of: of, dx: dx, rd: rd, tt: tt, co:co),
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
                                        children: buildList(),
                                        controller: _controller,
                                      ),
                                    )
                                  ],
                                ))),
                      )
                    ];
                  },
                  body: Container(
                      margin: EdgeInsets.only(top: 100.0), child: ShopMain())),
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
