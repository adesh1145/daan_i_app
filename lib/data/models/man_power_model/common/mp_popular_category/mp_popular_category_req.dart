class MpPopularCategoryReq {
  String? userId;
  String? cityName;
  int? limit;
  String? authKey;

  MpPopularCategoryReq({this.userId, this.cityName, this.limit, this.authKey});

  MpPopularCategoryReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    cityName = json['cityName'];
    limit = json['limit'];
    authKey = json['authKey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['cityName'] = this.cityName;
    data['limit'] = this.limit;
    data['authKey'] = this.authKey;
    return data;
  }
}
