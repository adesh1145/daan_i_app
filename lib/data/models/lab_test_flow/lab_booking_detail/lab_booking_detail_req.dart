class LabBookingDetailReq {
  String? userId;
  String? orderId;
  String? authKey;
  String? cityName;

  LabBookingDetailReq({this.userId, this.orderId, this.authKey, this.cityName});

  LabBookingDetailReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    orderId = json['order_id'];
    authKey = json['auth_key'];
    cityName = json['cityName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['order_id'] = this.orderId;
    data['auth_key'] = this.authKey;
    data['cityName'] = this.cityName;
    return data;
  }
}
