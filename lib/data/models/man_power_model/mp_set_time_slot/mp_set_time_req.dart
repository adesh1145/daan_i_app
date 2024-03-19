class MpSetTimeReq {
  String? userId;
  String? cityName;
  String? authKey;
  String? cartId;
  String? fromDate;
  String? toDate;
  String? instruction;

  MpSetTimeReq(
      {this.userId,
      this.cityName,
      this.authKey,
      this.cartId,
      this.fromDate,
      this.toDate,
      this.instruction});

  MpSetTimeReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    cityName = json['cityName'];
    authKey = json['authKey'];
    cartId = json['cartId'];
    fromDate = json['fromDate'];
    toDate = json['toDate'];
    instruction = json['instruction'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['cityName'] = this.cityName;
    data['authKey'] = this.authKey;
    data['cartId'] = this.cartId;
    data['fromDate'] = this.fromDate;
    data['toDate'] = this.toDate;
    data['instruction'] = this.instruction;
    return data;
  }
}
