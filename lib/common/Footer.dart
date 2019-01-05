import 'package:flutter/material.dart';

class Footer extends StatefulWidget {

   _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance
            ),
            title: Text('data')
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home
            ),
            title: Text('data')
          ),
        ],
      )
    );
  }
}