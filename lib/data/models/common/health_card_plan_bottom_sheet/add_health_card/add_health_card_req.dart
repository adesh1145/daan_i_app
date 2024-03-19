class AddHealthCardReq {
  String? userId;
  String? planId;
  String? cityName;
  String? authKey;

  AddHealthCardReq({this.userId, this.planId, this.cityName, this.authKey});

  AddHealthCardReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    planId = json['planId'];
    cityName = json['cityName'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['planId'] = this.planId;
    data['cityName'] = this.cityName;
    data['auth_key'] = this.authKey;
    return data;
  }
}
