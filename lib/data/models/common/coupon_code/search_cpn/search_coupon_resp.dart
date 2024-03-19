class SearchCouponResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  SearchCouponResp({this.result, this.status, this.message, this.jSONData});

  SearchCouponResp.fromJson(Map<String, dynamic> json) {
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
  int? couponId;
  String? couponCode;
  String? description;
  double? minimumCartValue;
  double? discountPercentage;
  double? discountAmount;
  double? maximumDiscountAmount;

  JSONData(
      {this.couponId,
      this.couponCode,
      this.description,
      this.minimumCartValue,
      this.discountPercentage,
      this.discountAmount,
      this.maximumDiscountAmount});

  JSONData.fromJson(Map<String, dynamic> json) {
    couponId = json['couponId'];
    couponCode = json['couponCode'];
    description = json['description'];
    minimumCartValue = double.tryParse(json['minimumCartValue'].toString());
    discountPercentage = double.tryParse(json['discountPercentage'].toString());
    discountAmount = double.tryParse(json['discountAmount'].toString());
    maximumDiscountAmount =
        double.tryParse(json['maximumDiscountAmount'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['couponId'] = this.couponId;
    data['couponCode'] = this.couponCode;
    data['description'] = this.description;
    data['minimumCartValue'] = this.minimumCartValue;
    data['discountPercentage'] = this.discountPercentage;
    data['discountAmount'] = this.discountAmount;
    data['maximumDiscountAmount'] = this.maximumDiscountAmount;
    return data;
  }
}
