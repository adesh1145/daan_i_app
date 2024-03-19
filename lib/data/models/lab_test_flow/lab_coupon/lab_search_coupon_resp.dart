class LabCouponSearchResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  LabCouponSearchResp({this.result, this.status, this.message, this.jSONData});

  LabCouponSearchResp.fromJson(Map<String, dynamic> json) {
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
  int? labCouponId;
  String? lcCode;
  String? labCouponDescription;
  int? labCouponMinCartValue;
  int? labCouponDiscountPercent;
  String? labCouponDiscountAmount;
  int? labCouponMaxDiscountValue;
  String? labCouponVisible;
  String? labCouponStatus;

  JSONData(
      {this.labCouponId,
      this.lcCode,
      this.labCouponDescription,
      this.labCouponMinCartValue,
      this.labCouponDiscountPercent,
      this.labCouponDiscountAmount,
      this.labCouponMaxDiscountValue,
      this.labCouponVisible,
      this.labCouponStatus});

  JSONData.fromJson(Map<String, dynamic> json) {
    labCouponId = json['lab_coupon_id'];
    lcCode = json['lc_code'];
    labCouponDescription = json['lab_coupon_description'];
    labCouponMinCartValue = json['lab_coupon_min_cart_value'];
    labCouponDiscountPercent = json['lab_coupon_discount_percent'];
    labCouponDiscountAmount = json['lab_coupon_discount_amount'];
    labCouponMaxDiscountValue = json['lab_coupon_max_discount_value'];
    labCouponVisible = json['lab_coupon_visible'];
    labCouponStatus = json['lab_coupon_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_coupon_id'] = this.labCouponId;
    data['lc_code'] = this.lcCode;
    data['lab_coupon_description'] = this.labCouponDescription;
    data['lab_coupon_min_cart_value'] = this.labCouponMinCartValue;
    data['lab_coupon_discount_percent'] = this.labCouponDiscountPercent;
    data['lab_coupon_discount_amount'] = this.labCouponDiscountAmount;
    data['lab_coupon_max_discount_value'] = this.labCouponMaxDiscountValue;
    data['lab_coupon_visible'] = this.labCouponVisible;
    data['lab_coupon_status'] = this.labCouponStatus;
    return data;
  }
}
