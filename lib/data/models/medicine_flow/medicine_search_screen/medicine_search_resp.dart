
class MedicineSearchRes {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  MedicineSearchRes({this.result, this.status, this.message, this.jSONData});

  MedicineSearchRes.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    if (json['JSONData'] != null) {
      jSONData = <JSONData>[];
      json['JSONData'].forEach((v) {
        jSONData!.add(new JSONData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JSONData {
  String? searchType;
  int? categoryId;
  String? categoryName;
  int? medicineId;
  int? priceId;
  String? medicineName;
  String? image;
  double? actualPrice;
  double? offerPrice;
  double? discountPercentage;
  int? quantityVarient;
  String? type;
  int? saltId;
  String? saltName;
  String? categoryLevel;

  JSONData(
      {this.searchType,
      this.categoryId,
      this.categoryName,
      this.medicineId,
      this.priceId,
      this.medicineName,
      this.image,
      this.actualPrice,
      this.offerPrice,
      this.discountPercentage,
      this.quantityVarient,
      this.type,
      this.saltId,
      this.saltName,
      this.categoryLevel});

  JSONData.fromJson(Map<String, dynamic> json) {
    searchType = json['searchType'];
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    medicineId = json['medicineId'];
    priceId = json['priceId'];
    medicineName = json['medicineName'];
    image = json['image'];
    actualPrice = double.tryParse(json['actualPrice'].toString());
    offerPrice = double.tryParse(json['offerPrice'].toString());
    discountPercentage = double.tryParse(json['discountPercentage'].toString());
    quantityVarient = json['QuantityVarient'];
    type = json['type'];
    saltId = json['saltId'];
    saltName = json['saltName'];
    categoryLevel = json['categoryLevel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['searchType'] = this.searchType;
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['medicineId'] = this.medicineId;
    data['priceId'] = this.priceId;
    data['medicineName'] = this.medicineName;
    data['image'] = this.image;
    data['actualPrice'] = this.actualPrice;
    data['offerPrice'] = this.offerPrice;
    data['discountPercentage'] = this.discountPercentage;
    data['QuantityVarient'] = this.quantityVarient;
    data['type'] = this.type;
    data['saltId'] = this.saltId;
    data['saltName'] = this.saltName;
    data['categoryLevel'] = this.categoryLevel;
    return data;
  }
}
