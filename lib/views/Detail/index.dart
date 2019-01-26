import 'package:flutter/material.dart';

class Detail extends StatelessWidget {

   Detail({
    Key key,
    this.count,
    this.name
  }) : super(key: key);

  final count;
  final name;

  @override
  Widget build(BuildContext context) {
   print('om$count');
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('data'),
        // ),
        body: GestureDetector(
            child:Column(
              children: <Widget>[
                Hero(
                 tag: 'om$count',
                  child: Image.network(
                    'https://img5.duitang.com/uploads/item/201411/07/20141107164412_v284V.jpeg',
                  ),
                ),
              ],
            ),

            onTap: () {
      Navigator.pop(context);
    }));
  }
}
