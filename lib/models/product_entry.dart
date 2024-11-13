// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String model;
    String pk;
    Fields fields;

    ProductEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String productName;
    int price;
    String productDescription;
    int availableQty;

    Fields({
        required this.user,
        required this.productName,
        required this.price,
        required this.productDescription,
        required this.availableQty,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        productName: json["product_name"],
        price: json["price"],
        productDescription: json["product_description"],
        availableQty: json["available_qty"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "product_name": productName,
        "price": price,
        "product_description": productDescription,
        "available_qty": availableQty,
    };
}
