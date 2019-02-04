class HomeItem {
  final String name;
  final String text;
  final String bgimg; 
  HomeItem(this.name, this.text,this.bgimg);

  HomeItem.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        bgimg= json['bgimg'],
        text = json['text'];

  Map<String, dynamic> toJson() =>
    {
      'name': name,
      'email': text,
      'bgimg':bgimg
    };
}