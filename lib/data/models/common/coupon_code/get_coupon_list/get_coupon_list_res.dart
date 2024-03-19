class GetCouponListRes {
  String? result;
  String? status;
  String? message;
  GetCouponListData? jSONData;

  GetCouponListRes({this.result, this.status, this.message, this.jSONData});

  GetCouponListRes.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    jSONData = json['JSONData'] != null
        ? new GetCouponListData.fromJson(json['JSONData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.toJson();
    }
    return data;
  }
}

class GetCouponListData {
  List<CouponList>? couponList;

  GetCouponListData({this.couponList});

  GetCouponListData.fromJson(Map<String, dynamic> json) {
    if (json['couponList'] != null) {
      couponList = <CouponList>[];
      json['couponList'].forEach((v) {
        couponList!.add(new CouponList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.couponList != null) {
      data['couponList'] = this.couponList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CouponList {
  int? couponId;
  String? couponCode;
  String? description;
  double? minimunCartValue;
  double? discountPercentage;
  double? discountAmount;
  double? maximumDiscountAmount;

  CouponList(
      {this.couponId,
      this.couponCode,
      this.description,
      this.minimunCartValue,
      this.discountPercentage,
      this.discountAmount,
      this.maximumDiscountAmount});

  CouponList.fromJson(Map<String, dynamic> json) {
    couponId = json['couponId'];
    couponCode = json['couponCode'];
    description = json['description'];
    minimunCartValue = double.tryParse(json['minimunCartValue'].toString());
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
    data['minimunCartValue'] = this.minimunCartValue;
    data['discountPercentage'] = this.discountPercentage;
    data['discountAmount'] = this.discountAmount;
    data['maximumDiscountAmount'] = this.maximumDiscountAmount;
    return data;
  }
}
