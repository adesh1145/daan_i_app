class CancelLabOrderReq {
  String? userId;
  String? orderId;
  String? cityName;
  String? authKey;

  CancelLabOrderReq({this.userId, this.orderId, this.cityName, this.authKey});

  CancelLabOrderReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    orderId = json['order_id'];
    cityName = json['cityName'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['order_id'] = this.orderId;
    data['cityName'] = this.cityName;
    data['auth_key'] = this.authKey;
    return data;
  }
}
