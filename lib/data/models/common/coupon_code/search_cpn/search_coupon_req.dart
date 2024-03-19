class CouponSearchReq {
  String? couponName;
  String? cityName;
  String? authKey;

  CouponSearchReq({this.couponName, this.cityName, this.authKey});

  CouponSearchReq.fromJson(Map<String, dynamic> json) {
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
