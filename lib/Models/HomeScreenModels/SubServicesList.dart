import 'dart:convert';

List<SubServicesList> subServicesListFromJson(String str) => List<SubServicesList>.from(json.decode(str).map((x) => SubServicesList.fromJson(x)));

String subServicesListToJson(List<SubServicesList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SubServicesList {
  String id;
  String title;
  String description;
  String image;

  SubServicesList({
    this.id,
    this.title,
    this.description,
    this.image,
  });

  factory SubServicesList.fromJson(Map<String, dynamic> json) => SubServicesList(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "image": image,
  };
}
