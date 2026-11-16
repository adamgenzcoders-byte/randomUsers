class RandomUserModel {
  final String fName;
  final String lName;
  final String email;
  final String picture;

  RandomUserModel({
    required this.fName,
    required this.lName,
    required this.email,
    required this.picture,
  });

  factory RandomUserModel.fromJson(Map<String, dynamic> json) {
    return RandomUserModel(
      fName: json["name"]["first"],
      lName: json["name"]["last"],
      email: json["email"],
      picture: json["picture"]["medium"],
    );
  }
}
