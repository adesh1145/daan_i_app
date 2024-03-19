class MedicineReorderReq {
  String? orderId;
  String? userId;
  String? authKey;

  MedicineReorderReq({this.orderId, this.userId, this.authKey});

  MedicineReorderReq.fromJson(Map<String, dynamic> json) {
    orderId = json['orderId'];
    userId = json['userId'];
    authKey = json['authKey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['orderId'] = this.orderId;
    data['userId'] = this.userId;
    data['authKey'] = this.authKey;
    return data;
  }
}
