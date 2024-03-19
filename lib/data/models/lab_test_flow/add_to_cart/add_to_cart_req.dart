class AddLabTestCartReq {
  String? userId;
  String? testId;
  String? ltPriceId;
  String? cityName;
  String? auth;

  AddLabTestCartReq(
      {this.userId, this.testId, this.ltPriceId, this.cityName, this.auth});

  AddLabTestCartReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    testId = json['test_id'];
    ltPriceId = json['lt_price_id'];
    cityName = json['cityName'];
    auth = json['auth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['test_id'] = this.testId;
    data['lt_price_id'] = this.ltPriceId;
    data['cityName'] = this.cityName;
    data['auth'] = this.auth;
    return data;
  }
}
