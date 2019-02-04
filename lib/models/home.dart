class HomeItem {
  final String name;
  final String text;

  HomeItem(this.name, this.text);

  HomeItem.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        text = json['text'];

  Map<String, dynamic> toJson() =>
    {
      'name': name,
      'email': text,
    };
}