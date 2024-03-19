class HealthCategoryWishListResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  HealthCategoryWishListResp(
      {this.result, this.status, this.message, this.jSONData});

  HealthCategoryWishListResp.fromJson(Map<String, dynamic> json) {
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
  String? masterCategory;
  String? message;

  JSONData({this.masterCategory, this.message});

  JSONData.fromJson(Map<String, dynamic> json) {
    masterCategory = json['master_category'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['master_category'] = this.masterCategory;
    data['message'] = this.message;
    return data;
  }
}
