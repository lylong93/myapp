class HomeItem {
  final String name;
  final String text;
  final String bgimg;
  final Num num;
  HomeItem({this.name, this.text, this.bgimg, this.num});

  factory HomeItem.fromJson(Map<String, dynamic> parsedJson) {
    return HomeItem(
        name: parsedJson['name'],
        text: parsedJson['text'],
        bgimg: parsedJson['bgimg'],
        num: Num.fromJson(parsedJson['num']));
  }
}

class Num {
   int one;
   int tow;
   int three;

  Num({this.one, this.tow, this.three});

  factory Num.fromJson(Map<String, dynamic> json) {
    return Num(
      one: json['one'],
      tow: json['tow'],
      three: json['three'],
    );
  }
  Map<String, dynamic> toJson() =>
    {
      'one': one,
      'tow': tow,
      'three':three
    };
}
