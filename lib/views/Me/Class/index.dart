class ListItem{
  ListItem({this.iconData,this.title,this.subtitle});
  var iconData;
  String title;
  String subtitle;

   Map<String, dynamic> toJson() =>
    {
      'iconData': iconData,
      'title':title
    };
}
