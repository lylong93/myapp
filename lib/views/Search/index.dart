import 'package:flutter/material.dart';
class Search extends SearchDelegate {

 @override
 List<Widget> buildActions(BuildContext context) {
    return [
      Text('o')
    ];
  }
  @override
  Widget  buildLeading(BuildContext context) {
    return Icon(Icons.golf_course);
  }

 @override
  Widget buildResults(BuildContext context){
    return Text('ok');
  }
 @override
  Widget buildSuggestions(BuildContext context){
    return Text('buildSuggestions');
  }

}