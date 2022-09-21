class CatModel {
  CatModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  final String id;
  final String name;
  final String description;
  final String imageUrl;

  factory CatModel.fromJson(Map<String, dynamic> json) => CatModel(
        description: json["description"],
        id: json["id"],
        imageUrl: json["image-url"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "id": id,
        "image-url": imageUrl,
        "name": name,
      };
}
