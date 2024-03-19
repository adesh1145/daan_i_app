class GetPatientListReq {
  String? userId;
  String? cityName;
  String? authKey;

  GetPatientListReq({this.userId, this.cityName, this.authKey});

  GetPatientListReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    cityName = json['cityName'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['cityName'] = this.cityName;
    data['auth_key'] = this.authKey;
    return data;
  }
}
