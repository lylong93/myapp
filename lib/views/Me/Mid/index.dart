import 'package:flutter/material.dart';

import 'package:myapp/components/card/index.dart';

class MidTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return  GridView.count(
        crossAxisSpacing: 1.0,
        mainAxisSpacing:1.0,
        crossAxisCount: 2,
        childAspectRatio:0.8,
        children:[
          Text('mid')
        ],
    );
    }
}