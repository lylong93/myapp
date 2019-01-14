import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({ Key key}):super(key: key);
  
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('shop'),
    );
  }
}