import 'package:flutter/material.dart';
class ListItem{
  ListItem({this.iconData,this.title,this.subtitle,this.color});
  var iconData;
  String title;
  String subtitle;
  Color color;

   Map<String, dynamic> toJson() =>
    {
      'iconData': iconData,
      'title':title
    };
}
