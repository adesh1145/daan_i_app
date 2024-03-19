class MedicineSearchCouponResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  MedicineSearchCouponResp(
      {this.result, this.status, this.message, this.jSONData});

  MedicineSearchCouponResp.fromJson(Map<String, dynamic> json) {
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
  int? medicineCouponId;
  String? medicineCouponCode;
  String? medicineCouponDescription;
  double? medicineCouponMinCartValue;
  double? medicineCouponDiscountPercent;
  double? medicineCouponDiscountAmount;
  double? medicineCouponMaxDiscountValue;
  String? medicineCouponVisible;
  String? medicineCouponStatus;

  JSONData(
      {this.medicineCouponId,
      this.medicineCouponCode,
      this.medicineCouponDescription,
      this.medicineCouponMinCartValue,
      this.medicineCouponDiscountPercent,
      this.medicineCouponDiscountAmount,
      this.medicineCouponMaxDiscountValue,
      this.medicineCouponVisible,
      this.medicineCouponStatus});

  JSONData.fromJson(Map<String, dynamic> json) {
    medicineCouponId = json['medicine_coupon_id'];
    medicineCouponCode = json['medicine_coupon_code'];
    medicineCouponDescription = json['medicine_coupon_description'];
    medicineCouponMinCartValue =
        double.tryParse(json['medicine_coupon_min_cart_value'].toString());
    medicineCouponDiscountPercent =
        double.tryParse(json['medicine_coupon_discount_percent'].toString());
    medicineCouponDiscountAmount =
        double.tryParse(json['medicine_coupon_discount_amount'].toString());
    medicineCouponMaxDiscountValue =
        double.tryParse(json['medicine_coupon_max_discount_value'].toString());
    medicineCouponVisible = json['medicine_coupon_visible'];
    medicineCouponStatus = json['medicine_coupon_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['medicine_coupon_id'] = this.medicineCouponId;
    data['medicine_coupon_code'] = this.medicineCouponCode;
    data['medicine_coupon_description'] = this.medicineCouponDescription;
    data['medicine_coupon_min_cart_value'] = this.medicineCouponMinCartValue;
    data['medicine_coupon_discount_percent'] =
        this.medicineCouponDiscountPercent;
    data['medicine_coupon_discount_amount'] = this.medicineCouponDiscountAmount;
    data['medicine_coupon_max_discount_value'] =
        this.medicineCouponMaxDiscountValue;
    data['medicine_coupon_visible'] = this.medicineCouponVisible;
    data['medicine_coupon_status'] = this.medicineCouponStatus;
    return data;
  }
}
