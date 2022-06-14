class CatagoryModel {
  String? status;
  String? message;
  List<CatagoryResultData>? resultData;

  CatagoryModel({this.status, this.message, this.resultData});

  CatagoryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['resultData'] != null) {
      resultData = <CatagoryResultData>[];
      json['resultData'].forEach((v) {
        resultData!.add(CatagoryResultData.fromJson(v));
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

class CatagoryResultData {
  String? sId;
  String? name;
  List<String>? images;
  List<String>? thumbnail;
  bool? isActive;
  String? createdAt;
  String? updatedAt;
  int? iV;
  List<String>? thumbURL;
  List<String>? imageURL;

  CatagoryResultData(
      {this.sId,
      this.name,
      this.images,
      this.thumbnail,
      this.isActive,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.thumbURL,
      this.imageURL});

  CatagoryResultData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    images = json['images'].cast<String>();
    thumbnail = json['thumbnail'].cast<String>();
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
    data['images'] = images;
    data['thumbnail'] = thumbnail;
    data['isActive'] = isActive;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    data['thumbURL'] = thumbURL;
    data['imageURL'] = imageURL;
    return data;
  }
}
