class HomeItem {
  final String name;
  final String email;

  HomeItem(this.name, this.email);

  HomeItem.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() =>
    {
      'name': name,
      'email': email,
    };
}