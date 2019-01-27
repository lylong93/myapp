import 'package:flutter/material.dart';
class Search extends SearchDelegate {

 @override
 List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.close),
        onPressed: (){
          close(context, null);
        },
      )
    ];
  }
  @override
  Widget  buildLeading(BuildContext context) {
    // return Icon(Icons.search);
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: (){
        close(context, null);
      },
    );
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