import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'dart:math' as Math;

// void change (n){
//   setState(() {});
// }
// class World extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _CircleProgressState();
// }
// class _CircleProgressState extends State<World> {
//   int flag = 1;
//   @override
//   void initState() {
//   void change (n){
//     // setState(() {});
//     print('object');
//   }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Text(flag.toString());
//   }
// }

// 画布
class Sky extends CustomPainter {
  Sky({this.of,this.dx,this.rd});
  var of;
  var dx;
  var rd;
  @override
  void paint(Canvas canvas, Size size) {
    // var rect = Offset.zero & size;
    // var rect = Rect.fromCircle(center: Offset(50.0,50.0),radius: 10.0);
    var rect = Rect.fromLTRB(0.0, 0.0, 375.0, 300.0);

    var gradient = LinearGradient(
      begin: Alignment.topLeft,
      end:Alignment.bottomLeft,
       colors: [const Color(0xFFFFFF00), const Color(0xFF0099FF)],
       stops: [0.4, 1.0],
      );
    
    // RadialGradient(
    //   center: const Alignment(0.0, 0.0),
    //   radius: rd,
    //   colors: [const Color(0xFFFFFF00), const Color(0xFF0099FF)],
    //   stops: [0.4, 1.0],
    // );
    Paint paint = new Paint()
      ..strokeWidth = 10
      ..style = PaintingStyle.fill
      ..shader = gradient.createShader(rect);

    Paint linepaint = new Paint();
    linepaint.strokeWidth = 1;
    linepaint.style = PaintingStyle.stroke;
    linepaint.color = Colors.red;
    // linepaint.shader = gradient.createShader(rect);

    // canvas.drawLine(
    //   Offset(0.0, 100.0),

    //   Offset(375.0, 100.0),
    //   linepaint);
    var path = Path();
    path.reset();
     path.moveTo(0.0, 600.0);
    path.lineTo(0.0, 100.0);
    path.cubicTo(0.0, 0.0, dx, of, 375.0, 100.0);
     path.lineTo(375.0, 600.0);
    path.close();
    // Path path = new Path();

    //  var width = 200;
    //  var height = 300;
    //  path.moveTo(0.0, 0.0);
    //  path.lineTo(width.toDouble(), height.toDouble());
    //  path.cubicTo((width * 6) / 7, height / 9, (width * 12) / 13,
    //      (height * 2) / 5, width / 2, (height * 7) / 12);
    //  canvas.drawPath(path, linepaint);


  

    canvas.clipPath(
      path,
      doAntiAlias:true,
    );
      
    canvas.drawRect(rect,paint);
    
    // canvas.drawRect(rect1,linepaint);


    // canvas.drawPath(path, linepaint);

    // canvas.clipRect(
    //   rect,
    //   doAntiAlias:true,
    // );
    // canvas.clipPath(
    //   path,
    //   doAntiAlias:true,
    //   );
     
    // canvas.drawLine(
    //   Offset(0.0,of),
    //   Offset(375.0,of),
    //   paint
    //   // Paint()..shader = gradient.createShader(rect),
    // );
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
  //  of= Math.Random;
   double dx = 0.0;
  double rd = 0.1;
  var _start = 0.0;
  var _next = 0.0;
  var  user ;
  var istop = true;
  // var isbom = false;

  @override
  void initState() {
    super.initState();
    // _controller.addListener(() {
    //   print('ooo');
    // });
    // _controler = AnimationController(
    //   vsync: this,
    //   duration: Duration(milliseconds: 300),
    //   // the SingleTickerProviderStateMixin
    //   // duration: widget.duration,
    // );
    // _controler.addListener(() {
    //   print('object');
    // });
    // AnimationController();
    _nestcontroller.addListener(() {
     
      print( _nestcontroller.position);
      // controller.animateTo();

      var pix = _nestcontroller.position.pixels;
      if (pix == 244) {
        print('到顶部了');
        controller.reset();
        controller.forward();
        istop = true;

        //  controller.reset();
        //  controller.forward();

        // print(istop);
        // _start = 0;
        // _next = 0;
      }
      if (pix == 0) {
        print('到底部了');
        controller.reset();
        controller.forward();
        istop = false;

        // controller.reset();
        //  controller.forward();

        // _start = 0;
        // _next = 0;
      }
      // if(istop) {
      // if(_start == 0 ) {
      //   _start = pix;
      //   }
      // _next = pix;
      // var off = _start - _next;
      // if(off< 0) {
      //    print('上');
      //   // of= of+5.0;
      //   // print(of);
      //   // print(controller);
      //   // controller.forward();
      //   // controller;
      // } else if(off > 0){
      //   print('下');
      //   // of= of-5.0;
      //   // print(of);
      // }
      // setState(() {});
      // print(_nestcontroller.position.pixels);
      // controller.forward();
    });
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
        // print('object');
        // print('动画');
        if (!istop) {
          // print('减少');
          of++;
          rd = rd +0.01;
          // of--;
          // of = of --;
          // of= of-0.1;
        } else {
          // print('增加');
          of--;
           rd = rd -0.01;
          // of++;
          // of = of ++;
          //  of= of+0.1;
        }
        setState(() {});
      });
    // animation = Tween(begin: 100.0, end: 200.0).animate(controller)
    //   ..addListener(() {
    //     // print('object');
    //   });
    // controller.forward();
    // curved = new CurvedAnimation(
    // parent: controller, curve: Curves.linear); //模仿小球自由落体运动轨迹
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Listener(
      // onScaleStart: test,
      onPointerDown: (event) {
        
        user = event.position;
        print(user.dx);
        dx = user.dx;
      },
      child:
          // Container(
          //   color: Colors.red,
          //   height: 100.0,
          //   width: 100.0,
          //   child: Text('data'),
          // )
          NestedScrollView(
              controller: _nestcontroller,
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                    child: SliverAppBar(
                        pinned: true,
                        expandedHeight: 300.0,
                        flexibleSpace: Container(
                            color: Colors.blue,
                            height: 300.0,
                            child: Column(
                              children: <Widget>[
                                AppBar(
                                    title: Text("this is ok"), elevation: 0.0),
                                Expanded(
                                  child: ListView(
                                    physics:
                                        const AlwaysScrollableScrollPhysics(),
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
              
              Container(
                  margin: EdgeInsets.only(top: 100.0),
                  child: 
                  
                  CustomPaint(
                    painter: Sky(of:of,dx:dx,rd:rd),
                    child: ListView(
                      children: <Widget>[
                        Text('o'),
                        Text('k'),
                      ],
                    ),
                  )
                  )
                  ),
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
    )

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
