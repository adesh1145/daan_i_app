class LabTestDetailReq {
  String? userId;
  String? cityName;
  String? testId;
  String? authKey;

  LabTestDetailReq({this.userId, this.cityName, this.testId, this.authKey});

  LabTestDetailReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    cityName = json['cityName'];
    testId = json['testId'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['cityName'] = this.cityName;
    data['testId'] = this.testId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
