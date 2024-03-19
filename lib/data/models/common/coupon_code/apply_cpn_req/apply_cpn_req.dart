class ApplyCpnReq {
  String? userId;
  String? cityName;
  String? couponId;
  String? cartValue;
  String? authKey;

  ApplyCpnReq(
      {this.userId,
        this.cityName,
        this.couponId,
        this.cartValue,
        this.authKey});

  ApplyCpnReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    cityName = json['cityName'];
    couponId = json['couponId'];
    cartValue = json['cartValue'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['cityName'] = this.cityName;
    data['couponId'] = this.couponId;
    data['cartValue'] = this.cartValue;
    data['auth_key'] = this.authKey;
    return data;
  }
}
