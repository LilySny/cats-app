class CatModel {
  CatModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  final String id;
  final String name;
  final String imageUrl;
  final String description;

  factory CatModel.fromJson(Map<String, dynamic> json) => CatModel(
        name: json["name"] ?? '',
        description: json["description"] ?? '',
        id: json["id"] ?? '',
        imageUrl: json["image-url"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "id": id,
        "image-url": imageUrl,
        "name": name,
      };
}
