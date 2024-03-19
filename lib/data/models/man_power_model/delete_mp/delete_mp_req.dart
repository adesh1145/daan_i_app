class DeleteMpReq {
  String? userId;
  String? cityName;
  String? authKey;
  String? cartId;

  DeleteMpReq({this.userId, this.cityName, this.authKey, this.cartId});

  DeleteMpReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    cityName = json['cityName'];
    authKey = json['authKey'];
    cartId = json['cartId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['cityName'] = this.cityName;
    data['authKey'] = this.authKey;
    data['cartId'] = this.cartId;
    return data;
  }
}
