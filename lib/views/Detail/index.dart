import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('data'),
        // ),
        body:
        
         GestureDetector(
            child: Hero(
              tag: 'imao',
              child: Image.network(
                'https://img5.duitang.com/uploads/item/201411/07/20141107164412_v284V.jpeg',
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            }));
  }
}
