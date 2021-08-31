class UserModel {
  final id;
  final name;
  final description;
  final pictureId;
  final city;
  final rating;
  final Https;

  UserModel({
    this.id,
    this.name,
    this.description,
    this.pictureId,
    this.city,
    this.rating,
    this.Https,
  });

  factory UserModel.createIdential(Map<String, dynamic> obs) {
    return UserModel(
      id: obs['id'],
      name: obs['name'],
      description: obs['description'],
      pictureId: obs['pictureId'],
      city: obs['city'],
      rating: obs['rating'],
    );
  }
}
