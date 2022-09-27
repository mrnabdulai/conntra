//TODO: will add more attributes

class User {
  final String name;
  final String email;
  final String imgUrl;

  User({required this.name, required this.email, required this.imgUrl});

  Map<String, dynamic> get toJson =>
      {'name': name, 'email': email, 'imgUrl': imgUrl};
}
