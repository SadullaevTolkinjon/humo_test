import 'dart:convert';

List<HumoTestModel> humoTestModelFromJson(String str) =>
    List<HumoTestModel>.from(
        json.decode(str).map((x) => HumoTestModel.fromJson(x)));

String humoTestModelToJson(List<HumoTestModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HumoTestModel {
  HumoTestModel({
    this.name,
    this.phone,
    this.price,
    this.img,
  });

  String? name;
  String? phone;
  String? price;
  String? img;

  factory HumoTestModel.fromJson(Map<String, dynamic> json) => HumoTestModel(
        name: json["name"],
        phone: json["phone"],
        price: json["price"],
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "phone": phone,
        "price": price,
        "img": img,
      };
}
