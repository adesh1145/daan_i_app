class MpAddToCartReq {
  String? userId;
  String? authKey;
  String? cityName;
  String? productId;
  String? type;
  String? addOrDelete;
  String? typeCount;
  String? priceId;

  MpAddToCartReq(
      {this.userId,
      this.authKey,
      this.cityName,
      this.productId,
      this.type,
      this.addOrDelete,
      this.typeCount,
      this.priceId});

  MpAddToCartReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    authKey = json['authKey'];
    cityName = json['cityName'];
    productId = json['productId'];
    type = json['type'];
    addOrDelete = json['addOrDelete'];
    typeCount = json['typeCount'];
    priceId = json['priceId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['authKey'] = this.authKey;
    data['cityName'] = this.cityName;
    data['productId'] = this.productId;
    data['type'] = this.type;
    data['addOrDelete'] = this.addOrDelete;
    data['typeCount'] = this.typeCount;
    data['priceId'] = this.priceId;
    return data;
  }
}
