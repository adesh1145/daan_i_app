class RemoveHealthCardReq {
  String? healthcardId;
  String? cityName;
  String? userId;
  String? authKey;

  RemoveHealthCardReq(
      {this.healthcardId, this.cityName, this.userId, this.authKey});

  RemoveHealthCardReq.fromJson(Map<String, dynamic> json) {
    healthcardId = json['healthcardId'];
    cityName = json['cityName'];
    userId = json['userId'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['healthcardId'] = this.healthcardId;
    data['cityName'] = this.cityName;
    data['userId'] = this.userId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
