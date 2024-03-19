class LabCartScreenReq {
  String? userId;
  String? cityName;
  String? auth;

  LabCartScreenReq({this.userId, this.cityName, this.auth});

  LabCartScreenReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    cityName = json['cityName'];
    auth = json['auth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['cityName'] = this.cityName;
    data['auth'] = this.auth;
    return data;
  }
}
