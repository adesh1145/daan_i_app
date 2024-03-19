class AddtoCartReq {
  String? userId;
  String? productId;
  String? priceId;
  String? authKey;
  String? cityName;

  AddtoCartReq(
      {this.userId, this.productId, this.priceId, this.authKey, this.cityName});

  AddtoCartReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    productId = json['productId'];
    priceId = json['priceId'];
    authKey = json['authKey'];
    cityName = json['cityName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['productId'] = this.productId;
    data['priceId'] = this.priceId;
    data['authKey'] = this.authKey;
    data['cityName'] = this.cityName;
    return data;
  }
}
