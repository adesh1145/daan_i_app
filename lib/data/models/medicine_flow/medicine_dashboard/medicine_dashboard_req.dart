class MedicineDashboardReq {
  String? userId;
  String? cityName;
  String? authKey;

  MedicineDashboardReq({this.userId, this.cityName, this.authKey});

  MedicineDashboardReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    cityName = json['cityName'];
    authKey = json['authKey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['cityName'] = this.cityName;
    data['authKey'] = this.authKey;
    return data;
  }
}
