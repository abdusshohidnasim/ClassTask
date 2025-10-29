import 'dart:math';
import 'dart:convert';


List<Prodected> prodectedFromJson(String str) => List<Prodected>.from(json.decode(str).map((x) => Prodected.fromJson(x)));

String prodectedToJson(List<Prodected> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Prodected {
  int userId;
  int id;
  String title;
  String body;
  double price;

  Prodected({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
    required this.price,
  });

  factory Prodected.fromJson(Map<String, dynamic> json) => Prodected(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
    price:500+Random().nextDouble() * 10000.0,
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
    "price":price,
  };
}
