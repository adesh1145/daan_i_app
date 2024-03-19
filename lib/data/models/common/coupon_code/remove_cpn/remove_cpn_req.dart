class RemoveCpnReq {
  String? userId;
  String? cityName;
  String? couponId;
  String? authKey;

  RemoveCpnReq({this.userId, this.cityName, this.couponId, this.authKey});

  RemoveCpnReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    cityName = json['cityName'];
    couponId = json['couponId'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['cityName'] = this.cityName;
    data['couponId'] = this.couponId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
