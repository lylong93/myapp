import 'package:flutter/material.dart';
import './common/Footer.dart';
import './views/Home/index.dart';
import './views/Me/index.dart';
import './views/Msg/index.dart';
import './views/Shop/index.dart';

import './views/Drawer/index.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title:'myapp',
      theme: ThemeData.light(),
      home:MyHomePage(title: 'BottomAppBar with FAB')
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  // @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _lastSelected = 0;

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = index;
    });
  }
  List<Widget> views= List();

  void test() {
    print('oktest');
  }
  @override 
  void initState() {
      views
        ..add(HomeScreen(callback:test))
        ..add(ShopScreen())
        ..add(MsgScreen())
        ..add(MeScreen());
      super.initState();
    }

   @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: views[_lastSelected],
        bottomNavigationBar:FABBottomAppBar(
          // centerItemText:'center',
          color: Colors.grey,
          notchedShape: CircularNotchedRectangle(),
          selectedColor: Color.fromRGBO(0,87,55,0.7),
           onTabSelected: _selectedTab,
          items: [
            FABBottomAppBarItem(iconData: Icons.menu, text: 'one'),
            FABBottomAppBarItem(iconData: Icons.layers, text: 'tow'),
            FABBottomAppBarItem(iconData: Icons.dashboard, text: 'three'),
            FABBottomAppBarItem(iconData: Icons.info, text: 'four'),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(146 ,182 ,213,1),
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.add),
          elevation: 2.0,
        ),
        drawer: DrawerSide(),
        // floatingActionButton:_buildFab(context),
      );
    }
    // Widget _buildFab(BuildContext context) {
    // final icons = [ Icons.sms, Icons.mail, Icons.phone ];
    // return AnchoredOverlay(
    //   showOverlay: true,
    //   overlayBuilder: (context, offset) {
    //     return CenterAbout(
    //       position: Offset(offset.dx, offset.dy - icons.length * 35.0),
    //       child: FabWithIcons(
    //         icons: icons,
    //         // onIconTapped: _selectedFab,
    //       ),
    //     );
    //   },
    //   child: FloatingActionButton(
    //     onPressed: () { },
    //     tooltip: 'Increment',
    //     child: Icon(Icons.add),
    //     elevation: 2.0,
    //   ),
    // );
  // }
}