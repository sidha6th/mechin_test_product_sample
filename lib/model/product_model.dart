class ProductModel {
  String? status;
  String? message;
  List<ResultData>? resultData;

  ProductModel({this.status, this.message, this.resultData});

  ProductModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['resultData'] != null) {
      resultData = <ResultData>[];
      json['resultData'].forEach((v) {
        resultData!.add(ResultData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (resultData != null) {
      data['resultData'] = resultData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ResultData {
  String? sId;
  String? name;
  String? userId;
  Deliverable? deliverable;
  int? price;
  List<ModelId>? modelId;
  CategoryId? categoryId;
  SubCategoryId? subCategoryId;
  List<String>? images;
  List<String>? thumbnail;
  String? description;
  int? quantity;
  int? offerPrice;
  int? sold;
  int? status;
  String? offerId;
  String? keywords;
  bool? isActive;
  String? createdAt;
  String? updatedAt;
  int? iV;
  List<String>? thumbURL;
  List<String>? imageURL;

  ResultData(
      {this.sId,
      this.name,
      this.userId,
      this.deliverable,
      this.price,
      this.modelId,
      this.categoryId,
      this.subCategoryId,
      this.images,
      this.thumbnail,
      this.description,
      this.quantity,
      this.offerPrice,
      this.sold,
      this.status,
      this.offerId,
      this.keywords,
      this.isActive,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.thumbURL,
      this.imageURL});

  ResultData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    userId = json['user_id'];
    deliverable = json['deliverable'] != null
        ? Deliverable.fromJson(json['deliverable'])
        : null;
    price = json['price'];
    if (json['model_id'] != null) {
      modelId = <ModelId>[];
      json['model_id'].forEach((v) {
        modelId!.add(ModelId.fromJson(v));
      });
    }
    categoryId = json['category_id'] != null
        ? CategoryId.fromJson(json['category_id'])
        : null;
    subCategoryId = json['sub_category_id'] != null
        ? SubCategoryId.fromJson(json['sub_category_id'])
        : null;
    images = json['images'].cast<String>();
    thumbnail = json['thumbnail'].cast<String>();
    description = json['description'];
    quantity = json['quantity'];
    offerPrice = json['offerPrice'];
    sold = json['sold'];
    status = json['status'];
    offerId = json['offerId'];
    keywords = json['keywords'];
    isActive = json['isActive'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    thumbURL = json['thumbURL'].cast<String>();
    imageURL = json['imageURL'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['user_id'] = userId;
    if (deliverable != null) {
      //data['deliverable'] = deliverable!.toJson();
    }
    data['price'] = price;
    if (modelId != null) {
      data['model_id'] = modelId!.map((v) => v.toJson()).toList();
    }
    if (categoryId != null) {
      data['category_id'] = categoryId!.toJson();
    }
    if (subCategoryId != null) {
      data['sub_category_id'] = subCategoryId!.toJson();
    }
    data['images'] = images;
    data['thumbnail'] = thumbnail;
    data['description'] = description;
    data['quantity'] = quantity;
    data['offerPrice'] = offerPrice;
    data['sold'] = sold;
    data['status'] = status;
    data['offerId'] = offerId;
    data['keywords'] = keywords;
    data['isActive'] = isActive;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    data['thumbURL'] = thumbURL;
    data['imageURL'] = imageURL;
    return data;
  }
}

class Deliverable {
  List<void>? coordinates;

  Deliverable({this.coordinates});

  Deliverable.fromJson(Map<String, dynamic> json) {
    if (json['coordinates'] != null) {
      coordinates = [];
      json['coordinates'].forEach((v) {
        coordinates!.add(Deliverable.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   if (coordinates != null) {
  //     data['coordinates'] = coordinates!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class ModelId {
  String? sId;
  String? name;
  String? makeId;
  String? carType;
  List<String>? images;
  List<String>? thumbnail;
  bool? isActive;
  String? createdAt;
  String? updatedAt;
  int? iV;

  ModelId(
      {this.sId,
      this.name,
      this.makeId,
      this.carType,
      this.images,
      this.thumbnail,
      this.isActive,
      this.createdAt,
      this.updatedAt,
      this.iV});

  ModelId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    makeId = json['make_id'];
    carType = json['carType'];
    images = json['images'].cast<String>();
    thumbnail = json['thumbnail'].cast<String>();
    isActive = json['isActive'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['make_id'] = makeId;
    data['carType'] = carType;
    data['images'] = images;
    data['thumbnail'] = thumbnail;
    data['isActive'] = isActive;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}

class CategoryId {
  String? sId;
  String? name;
  List<String>? images;
  List<String>? thumbnail;
  bool? isActive;
  String? createdAt;
  String? updatedAt;
  int? iV;

  CategoryId(
      {this.sId,
      this.name,
      this.images,
      this.thumbnail,
      this.isActive,
      this.createdAt,
      this.updatedAt,
      this.iV});

  CategoryId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    images = json['images'].cast<String>();
    thumbnail = json['thumbnail'].cast<String>();
    isActive = json['isActive'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['images'] = images;
    data['thumbnail'] = thumbnail;
    data['isActive'] = isActive;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}

class SubCategoryId {
  String? sId;
  String? name;
  String? categoryId;
  List<String>? images;
  List<String>? thumbnail;
  bool? isActive;
  String? createdAt;
  String? updatedAt;

  SubCategoryId(
      {this.sId,
      this.name,
      this.categoryId,
      this.images,
      this.thumbnail,
      this.isActive,
      this.createdAt,
      this.updatedAt});

  SubCategoryId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    categoryId = json['category_id'];
    images = json['images'].cast<String>();
    thumbnail = json['thumbnail'].cast<String>();
    isActive = json['isActive'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['category_id'] = categoryId;
    data['images'] = images;
    data['thumbnail'] = thumbnail;
    data['isActive'] = isActive;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
