class MpPdpReq {
  String? userId;
  String? cityName;
  String? authKey;
  String? categoryId;

  MpPdpReq({this.userId, this.cityName, this.authKey, this.categoryId});

  MpPdpReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    cityName = json['cityName'];
    authKey = json['authKey'];
    categoryId = json['categoryId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['cityName'] = this.cityName;
    data['authKey'] = this.authKey;
    data['categoryId'] = this.categoryId;
    return data;
  }
}
