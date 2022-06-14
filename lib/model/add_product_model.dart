import 'package:json_annotation/json_annotation.dart';
import 'package:mechine_test/extra/exports.dart';

class AddProductModel {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'sub_category_id')
  String? subCatagoryId;
  @JsonKey(name: 'user_id')
  String? userId;
  @JsonKey(name: 'category_id')
  String? categoryId;
  @JsonKey(name: 'model_id')
  String? modelId;
  @JsonKey(name: 'quantity')
  String? quantity;
  @JsonKey(name: 'price')
  String? price;
  @JsonKey(name: 'offerPrice')
  String? offerPrice;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'keywords')
  String? keywords;

  AddProductModel({
    this.categoryId,
    this.description,
    this.keywords,
    this.modelId,
    this.name,
    this.offerPrice,
    this.price,
    this.quantity,
    this.subCatagoryId,
    this.userId,
  });
    Map<String, dynamic> tojson() => {
        'name': name,
        'sub_category_id': subCatagoryId,
        'user_id': userId,
        'category_id': categoryId,
        'model_id': modelId,
        'quantity': quantity,
        'price': price,
        'offerPrice': offerPrice,
        'description': description,
        'keywords': keywords,
      };
}
