class MedicineSearchCouponReq {
  String? couponName;
  String? cityName;
  String? authKey;

  MedicineSearchCouponReq({this.couponName, this.cityName, this.authKey});

  MedicineSearchCouponReq.fromJson(Map<String, dynamic> json) {
    couponName = json['couponName'];
    cityName = json['cityName'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['couponName'] = this.couponName;
    data['cityName'] = this.cityName;
    data['auth_key'] = this.authKey;
    return data;
  }
}
