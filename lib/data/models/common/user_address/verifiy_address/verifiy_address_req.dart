class VerifyAddressReq {
  String? userId;
  String? cityName;

  VerifyAddressReq({this.userId, this.cityName});

  VerifyAddressReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    cityName = json['cityName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['cityName'] = this.cityName;
    return data;
  }
}
