class MediceCancelOrderReq {
  String? orderId;
  String? authKey;

  MediceCancelOrderReq({this.orderId, this.authKey});

  MediceCancelOrderReq.fromJson(Map<String, dynamic> json) {
    orderId = json['orderId'];
    authKey = json['authKey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['orderId'] = this.orderId;
    data['authKey'] = this.authKey;
    return data;
  }
}
