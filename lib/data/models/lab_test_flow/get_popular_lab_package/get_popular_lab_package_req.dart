class GetPopularLabPackageReq {
  String? userId;
  String? cityName;
  String? length;
  String? authKey;

  GetPopularLabPackageReq(
      {this.userId, this.cityName, this.length, this.authKey});

  GetPopularLabPackageReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    cityName = json['cityName'];
    length = json['length'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['cityName'] = this.cityName;
    data['length'] = this.length;
    data['auth_key'] = this.authKey;
    return data;
  }
}
