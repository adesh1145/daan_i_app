class MedicineHistoryDetailReq {
  String? userId;
  String? cityName;
  String? authKey;
  String? orderId;

  MedicineHistoryDetailReq(
      {this.userId, this.cityName, this.authKey, this.orderId});

  MedicineHistoryDetailReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    cityName = json['cityName'];
    authKey = json['authKey'];
    orderId = json['orderId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['cityName'] = this.cityName;
    data['authKey'] = this.authKey;
    data['orderId'] = this.orderId;
    return data;
  }
}
