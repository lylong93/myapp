import 'package:flutter/material.dart';
import './common/Footer.dart';
import './views/home.dart';
import './views/me.dart';

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
  @override 
  void initState() {
      views
        ..add(HomeScreen())
        ..add(MeScreen());
      super.initState();
    }

   @override
    Widget build(BuildContext context) {
      return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: views[_lastSelected],
        bottomNavigationBar:FABBottomAppBar(
          centerItemText:'center',
          color: Colors.grey,
          notchedShape: CircularNotchedRectangle(),
          selectedColor: Colors.red,
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
          onPressed: () { },
          tooltip: 'Increment',
          child: Icon(Icons.add),
          elevation: 2.0,
        ),
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