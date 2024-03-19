class LabBookingOverViewReq {
  String? userId;
  String? auth;
  String? cityName;

  LabBookingOverViewReq({this.userId, this.auth, this.cityName});

  LabBookingOverViewReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    auth = json['auth'];
    cityName = json['cityName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['auth'] = this.auth;
    data['cityName'] = this.cityName;
    return data;
  }
}
