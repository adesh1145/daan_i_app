class MedicineDetailReq {
  String? userId;
  String? productId;
  String? cityName;
  String? priceId;
  String? authKey;

  MedicineDetailReq(
      {this.userId, this.productId, this.cityName, this.priceId, this.authKey});

  MedicineDetailReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    productId = json['productId'];
    cityName = json['cityName'];
    priceId = json['priceId'];
    authKey = json['authKey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['productId'] = this.productId;
    data['cityName'] = this.cityName;
    data['priceId'] = this.priceId;
    data['authKey'] = this.authKey;
    return data;
  }
}
